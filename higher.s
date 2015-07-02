	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_f
	.align	4, 0x90
_f:                                     ## @f
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	andl	%edi, %esi
	notl	%edi
	andl	%edx, %edi
	orl	%esi, %edi
	movl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_g
	.align	4, 0x90
_g:                                     ## @g
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	movl	%edx, %eax
	orl	%esi, %eax
	andl	%edi, %eax
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_h
	.align	4, 0x90
_h:                                     ## @h
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	xorl	%esi, %edi
	xorl	%edx, %edi
	movl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_shift
	.align	4, 0x90
_shift:                                 ## @shift
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp11:
	.cfi_def_cfa_register %rbp
	movb	%sil, %cl
	roll	%cl, %edi
	movl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_hexrev
	.align	4, 0x90
_hexrev:                                ## @hexrev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	bswapl	%edi
	movl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_twopower
	.align	4, 0x90
_twopower:                              ## @twopower
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp15:
	.cfi_def_cfa_offset 16
Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp17:
	.cfi_def_cfa_register %rbp
                                        ## kill: EDI<def> EDI<kill> RDI<def>
	movl	$1, %eax
	testl	%edi, %edi
	je	LBB5_13
## BB#1:                                ## %.lr.ph
	shll	$2, %edi
	testl	%edi, %edi
	je	LBB5_4
## BB#2:                                ## %.lr.ph
	movb	$1, %al
	testb	%al, %al
	je	LBB5_4
## BB#3:
	xorl	%eax, %eax
	movl	$1, %edx
	movl	%edi, %ecx
	jmp	LBB5_10
LBB5_4:                                 ## %unr.cmp5
	movl	$1, %eax
	xorl	%ecx, %ecx
	testb	%cl, %cl
	je	LBB5_6
## BB#5:
	movl	%edi, %ecx
	jmp	LBB5_9
LBB5_6:                                 ## %unr.cmp
	movl	$1, %eax
	xorl	%ecx, %ecx
	testb	%cl, %cl
	movl	%edi, %ecx
	jne	LBB5_8
## BB#7:
	movl	$2, %eax
	leal	-1(%rdi), %ecx
LBB5_8:
	addl	%eax, %eax
	decl	%ecx
LBB5_9:
	addl	%eax, %eax
	decl	%ecx
	movl	%eax, %edx
LBB5_10:                                ## %.lr.ph.split
	cmpl	$4, %edi
	jb	LBB5_13
## BB#11:
	movl	%edx, %eax
	.align	4, 0x90
LBB5_12:                                ## =>This Inner Loop Header: Depth=1
	shll	$4, %eax
	addl	$-4, %ecx
	jne	LBB5_12
LBB5_13:                                ## %._crit_edge
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_hexrand
	.align	4, 0x90
_hexrand:                               ## @hexrand
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp18:
	.cfi_def_cfa_offset 16
Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp20:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Ltmp21:
	.cfi_offset %rbx, -32
Ltmp22:
	.cfi_offset %r14, -24
	movl	%edi, %ebx
	shll	$2, %ebx
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	callq	_time
	movl	%eax, %edi
	callq	_srand
	callq	_rand
	cltd
	idivl	%ebx
	movl	$1, %eax
	cmpl	$31, %edx
	je	LBB6_13
## BB#1:                                ## %.lr.ph
	movl	$31, %eax
	movl	$31, %ecx
	subl	%edx, %ecx
	andl	$3, %ecx
	subl	%edx, %eax
	je	LBB6_4
## BB#2:                                ## %.lr.ph
	movl	$1, %edx
	testl	%ecx, %ecx
	jne	LBB6_4
## BB#3:
	movl	%eax, %ecx
	jmp	LBB6_10
LBB6_4:                                 ## %unr.cmp5
	movl	$1, %r14d
	cmpl	$1, %ecx
	jne	LBB6_6
## BB#5:
	movl	%eax, %ecx
	jmp	LBB6_9
LBB6_6:                                 ## %unr.cmp
	movl	$1, %r14d
	cmpl	$2, %ecx
	movl	%eax, %ecx
	je	LBB6_8
## BB#7:
	movl	$2, %r14d
	leal	-1(%rax), %ecx
LBB6_8:
	addl	%r14d, %r14d
	decl	%ecx
LBB6_9:
	addl	%r14d, %r14d
	decl	%ecx
	movl	%r14d, %edx
LBB6_10:                                ## %.lr.ph.split
	cmpl	$4, %eax
	movl	%r14d, %eax
	jb	LBB6_13
## BB#11:
	movl	%edx, %eax
	.align	4, 0x90
LBB6_12:                                ## =>This Inner Loop Header: Depth=1
	shll	$4, %eax
	addl	$-4, %ecx
	jne	LBB6_12
LBB6_13:                                ## %._crit_edge
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_md4
	.align	4, 0x90
_md4:                                   ## @md4
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp23:
	.cfi_def_cfa_offset 16
Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp25:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
Ltmp26:
	.cfi_offset %rbx, -56
Ltmp27:
	.cfi_offset %r12, -48
Ltmp28:
	.cfi_offset %r13, -40
Ltmp29:
	.cfi_offset %r14, -32
Ltmp30:
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	56(%rdi), %rax
	movq	%rax, -56(%rbp)
	movq	48(%rdi), %rax
	movq	%rax, -64(%rbp)
	movq	40(%rdi), %rax
	movq	%rax, -72(%rbp)
	movq	32(%rdi), %rax
	movq	%rax, -80(%rbp)
	movq	24(%rdi), %rax
	movq	%rax, -88(%rbp)
	movq	16(%rdi), %rax
	movq	%rax, -96(%rbp)
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movq	%rcx, -104(%rbp)
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -144(%rbp)        ## 8-byte Spill
	movq	-104(%rbp), %rdx
	movq	%rdx, -176(%rbp)        ## 8-byte Spill
	leal	-1(%rax), %r10d
	movq	%rax, %rsi
	roll	$3, %r10d
	movl	%r10d, %eax
	notl	%eax
	movl	%r10d, %ecx
	andl	$-271733879, %ecx       ## imm = 0xFFFFFFFFEFCDAB89
	andl	$-1732584194, %eax      ## imm = 0xFFFFFFFF98BADCFE
	orl	%ecx, %eax
	movq	%rsi, %rcx
	shrq	$32, %rcx
	movq	%rcx, -120(%rbp)        ## 8-byte Spill
	leal	271733878(%rcx,%rax), %esi
	roll	$7, %esi
	movl	%esi, %eax
	notl	%eax
	movl	%esi, %ecx
	andl	%r10d, %ecx
	andl	$-271733879, %eax       ## imm = 0xFFFFFFFFEFCDAB89
	orl	%ecx, %eax
	movq	%rdx, %rcx
	leal	-1732584194(%rcx,%rax), %edx
	roll	$11, %edx
	movl	%edx, %eax
	andl	%esi, %eax
	movl	%edx, %edi
	notl	%edi
	andl	%r10d, %edi
	orl	%eax, %edi
	movq	%rcx, %rax
	shrq	$32, %rax
	movq	%rax, -160(%rbp)        ## 8-byte Spill
	leal	-271733879(%rax,%rdi), %ecx
	roll	$19, %ecx
	movl	%ecx, %edi
	andl	%edx, %edi
	movl	%ecx, %ebx
	notl	%ebx
	andl	%esi, %ebx
	orl	%edi, %ebx
	movq	-96(%rbp), %rax
	movq	%rax, -200(%rbp)        ## 8-byte Spill
	addl	%eax, %r10d
	movq	%rax, %r8
	addl	%ebx, %r10d
	roll	$3, %r10d
	movl	%r10d, %edi
	andl	%ecx, %edi
	movl	%r10d, %ebx
	notl	%ebx
	andl	%edx, %ebx
	orl	%edi, %ebx
                                        ## kill: RAX<def> R8<kill>
	movq	%r8, %r15
	shrq	$32, %rax
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	addl	%eax, %esi
	addl	%ebx, %esi
	roll	$7, %esi
	movl	%esi, %edi
	andl	%r10d, %edi
	movl	%esi, %ebx
	notl	%ebx
	andl	%ecx, %ebx
	orl	%edi, %ebx
	movq	-88(%rbp), %rax
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	addl	%eax, %edx
	addl	%ebx, %edx
	roll	$11, %edx
	movl	%edx, %edi
	andl	%esi, %edi
	movl	%edx, %ebx
	notl	%ebx
	andl	%r10d, %ebx
	orl	%edi, %ebx
	shrq	$32, %rax
	movq	%rax, -168(%rbp)        ## 8-byte Spill
	addl	%eax, %ecx
	addl	%ebx, %ecx
	roll	$19, %ecx
	movl	%ecx, %ebx
	movl	%ecx, %edi
	andl	%edx, %ebx
	notl	%edi
	andl	%esi, %edi
	orl	%ebx, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -216(%rbp)        ## 8-byte Spill
	addl	%eax, %r10d
	movq	%rax, %rbx
	addl	%edi, %r10d
	roll	$3, %r10d
	movl	%r10d, %r8d
	movl	%r10d, %edi
	andl	%ecx, %r8d
	notl	%edi
	andl	%edx, %edi
	orl	%r8d, %edi
                                        ## kill: RAX<def> RBX<kill>
	movq	%rbx, %r11
	shrq	$32, %rax
	movq	%rax, -152(%rbp)        ## 8-byte Spill
	addl	%eax, %esi
	addl	%edi, %esi
	roll	$7, %esi
	movl	%esi, %r8d
	movl	%esi, %edi
	andl	%r10d, %r8d
	notl	%edi
	andl	%ecx, %edi
	orl	%r8d, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -208(%rbp)        ## 8-byte Spill
	addl	%eax, %edx
	addl	%edi, %edx
	roll	$11, %edx
	movl	%edx, %r8d
	movl	%edx, %edi
	andl	%esi, %r8d
	notl	%edi
	andl	%r10d, %edi
	orl	%r8d, %edi
	shrq	$32, %rax
	movq	%rax, -184(%rbp)        ## 8-byte Spill
	addl	%eax, %ecx
	addl	%edi, %ecx
	roll	$19, %ecx
	movl	%ecx, %edi
	movl	%ecx, %r8d
	andl	%edx, %edi
	notl	%r8d
	andl	%esi, %r8d
	orl	%edi, %r8d
	movq	-64(%rbp), %r14
	addl	%r14d, %r10d
	addl	%r8d, %r10d
	roll	$3, %r10d
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	andl	%ecx, %r8d
	notl	%r9d
	andl	%edx, %r9d
	orl	%r8d, %r9d
	movq	%r14, %rax
	shrq	$32, %rax
	movq	%rax, -192(%rbp)        ## 8-byte Spill
	addl	%eax, %esi
	movq	%rax, %rbx
	addl	%r9d, %esi
	roll	$7, %esi
	movl	%esi, %eax
	movl	%esi, %r9d
	andl	%r10d, %eax
	notl	%r9d
	andl	%ecx, %r9d
	orl	%eax, %r9d
	movq	-56(%rbp), %r13
	addl	%r13d, %edx
	addl	%r9d, %edx
	roll	$11, %edx
	movl	%edx, %edi
	movl	%edx, %eax
	movq	%r13, %r12
	andl	%esi, %edi
	notl	%eax
	andl	%r10d, %eax
	orl	%edi, %eax
	shrq	$32, %r12
	addl	%r12d, %ecx
	addl	%eax, %ecx
	movl	%edx, %eax
	roll	$19, %ecx
	orl	%esi, %eax
	andl	%ecx, %eax
	orl	%edi, %eax
	movq	-144(%rbp), %rdi        ## 8-byte Reload
	addl	%edi, %r10d
	leal	1518500249(%rax,%r10), %edi
	movl	%ecx, %eax
	movl	%ecx, %r8d
	roll	$3, %edi
	orl	%edx, %eax
	andl	%edi, %eax
	andl	%edx, %r8d
	orl	%eax, %r8d
	addl	%r15d, %esi
	leal	1518500249(%r8,%rsi), %r10d
	movl	%edi, %eax
	movl	%edi, %esi
	roll	$5, %r10d
	orl	%ecx, %eax
	andl	%r10d, %eax
	andl	%ecx, %esi
	orl	%eax, %esi
	addl	%r11d, %edx
	leal	1518500249(%rsi,%rdx), %r8d
	movl	%r10d, %eax
	movl	%r10d, %edx
	roll	$9, %r8d
	orl	%edi, %eax
	andl	%r8d, %eax
	andl	%edi, %edx
	orl	%eax, %edx
	addl	%r14d, %ecx
	leal	1518500249(%rdx,%rcx), %eax
	movl	%r8d, %ecx
	movl	%r8d, %edx
	roll	$13, %eax
	orl	%r10d, %ecx
	andl	%eax, %ecx
	andl	%r10d, %edx
	orl	%ecx, %edx
	movq	-120(%rbp), %rcx        ## 8-byte Reload
	addl	%ecx, %edi
	leal	1518500249(%rdx,%rdi), %esi
	movl	%eax, %ecx
	movl	%eax, %edx
	roll	$3, %esi
	orl	%r8d, %ecx
	andl	%esi, %ecx
	andl	%r8d, %edx
	orl	%ecx, %edx
	movq	-128(%rbp), %rcx        ## 8-byte Reload
	addl	%ecx, %r10d
	leal	1518500249(%rdx,%r10), %r10d
	movl	%esi, %ecx
	movl	%esi, %edi
	roll	$5, %r10d
	orl	%eax, %ecx
	andl	%r10d, %ecx
	andl	%eax, %edi
	orl	%ecx, %edi
	movq	-152(%rbp), %rcx        ## 8-byte Reload
	addl	%ecx, %r8d
	leal	1518500249(%rdi,%r8), %ecx
	movl	%r10d, %edi
	movl	%r10d, %edx
	roll	$9, %ecx
	orl	%esi, %edi
	andl	%ecx, %edi
	andl	%esi, %edx
	orl	%edi, %edx
	addl	%ebx, %eax
	leal	1518500249(%rdx,%rax), %eax
	movl	%ecx, %edx
	movl	%ecx, %edi
	roll	$13, %eax
	orl	%r10d, %edx
	andl	%eax, %edx
	andl	%r10d, %edi
	orl	%edx, %edi
	movq	-176(%rbp), %r11        ## 8-byte Reload
	addl	%r11d, %esi
	leal	1518500249(%rdi,%rsi), %r8d
	movl	%eax, %edx
	movl	%eax, %edi
	roll	$3, %r8d
	orl	%ecx, %edx
	andl	%r8d, %edx
	andl	%ecx, %edi
	orl	%edx, %edi
	movq	-136(%rbp), %rdx        ## 8-byte Reload
	addl	%edx, %r10d
	leal	1518500249(%rdi,%r10), %edx
	movl	%r8d, %edi
	movl	%r8d, %esi
	roll	$5, %edx
	orl	%eax, %edi
	andl	%edx, %edi
	andl	%eax, %esi
	orl	%edi, %esi
	movq	-208(%rbp), %r9         ## 8-byte Reload
	addl	%r9d, %ecx
	leal	1518500249(%rsi,%rcx), %ecx
	movl	%edx, %esi
	movl	%edx, %edi
	roll	$9, %ecx
	orl	%r8d, %esi
	andl	%ecx, %esi
	andl	%r8d, %edi
	orl	%esi, %edi
	addl	%r13d, %eax
	leal	1518500249(%rdi,%rax), %r10d
	movl	%ecx, %esi
	movl	%ecx, %edi
	roll	$13, %r10d
	orl	%edx, %esi
	andl	%r10d, %esi
	andl	%edx, %edi
	orl	%esi, %edi
	movq	-160(%rbp), %rbx        ## 8-byte Reload
	addl	%ebx, %r8d
	leal	1518500249(%rdi,%r8), %esi
	movl	%r10d, %edi
	movl	%r10d, %eax
	roll	$3, %esi
	orl	%ecx, %edi
	andl	%esi, %edi
	andl	%ecx, %eax
	orl	%edi, %eax
	movq	-168(%rbp), %r15        ## 8-byte Reload
	addl	%r15d, %edx
	leal	1518500249(%rax,%rdx), %edx
	movl	%esi, %eax
	movl	%esi, %edi
	roll	$5, %edx
	orl	%r10d, %eax
	andl	%edx, %eax
	andl	%r10d, %edi
	orl	%eax, %edi
	movq	-184(%rbp), %r8         ## 8-byte Reload
	addl	%r8d, %ecx
	leal	1518500249(%rdi,%rcx), %ecx
	movl	%edx, %eax
	movl	%edx, %edi
	roll	$9, %ecx
	orl	%esi, %eax
	andl	%ecx, %eax
	andl	%esi, %edi
	orl	%eax, %edi
	addl	%r12d, %r10d
	leal	1518500249(%rdi,%r10), %eax
	movq	-144(%rbp), %rdi        ## 8-byte Reload
	addl	%edi, %esi
	movl	%ecx, %edi
	roll	$13, %eax
	xorl	%edx, %edi
	xorl	%eax, %edi
	leal	1859775393(%rdi,%rsi), %esi
	movq	-216(%rbp), %rdi        ## 8-byte Reload
	addl	%edi, %edx
	movl	%eax, %edi
	roll	$3, %esi
	xorl	%ecx, %edi
	xorl	%esi, %edi
	leal	1859775393(%rdi,%rdx), %edx
	movq	-200(%rbp), %rdi        ## 8-byte Reload
	addl	%edi, %ecx
	movl	%esi, %edi
	roll	$9, %edx
	xorl	%eax, %edi
	xorl	%edx, %edi
	leal	1859775393(%rdi,%rcx), %ecx
	addl	%r14d, %eax
	movl	%edx, %edi
	roll	$11, %ecx
	xorl	%esi, %edi
	xorl	%ecx, %edi
	leal	1859775393(%rdi,%rax), %eax
	addl	%r11d, %esi
	movl	%ecx, %edi
	roll	$15, %eax
	xorl	%edx, %edi
	xorl	%eax, %edi
	leal	1859775393(%rdi,%rsi), %esi
	addl	%r9d, %edx
	movl	%eax, %edi
	roll	$3, %esi
	xorl	%ecx, %edi
	xorl	%esi, %edi
	leal	1859775393(%rdi,%rdx), %edx
	movq	-136(%rbp), %rdi        ## 8-byte Reload
	addl	%edi, %ecx
	movl	%esi, %edi
	roll	$9, %edx
	xorl	%eax, %edi
	xorl	%edx, %edi
	leal	1859775393(%rdi,%rcx), %ecx
	roll	$11, %ecx
	addl	%r13d, %eax
	movl	%edx, %edi
	xorl	%esi, %edi
	xorl	%ecx, %edi
	leal	1859775393(%rdi,%rax), %eax
	roll	$15, %eax
	movq	-120(%rbp), %rdi        ## 8-byte Reload
	addl	%edi, %esi
	movl	%ecx, %edi
	xorl	%edx, %edi
	xorl	%eax, %edi
	leal	1859775393(%rdi,%rsi), %esi
	roll	$3, %esi
	movq	-152(%rbp), %rdi        ## 8-byte Reload
	addl	%edi, %edx
	movl	%eax, %edi
	xorl	%ecx, %edi
	xorl	%esi, %edi
	leal	1859775393(%rdi,%rdx), %edx
	roll	$9, %edx
	movq	-128(%rbp), %rdi        ## 8-byte Reload
	addl	%edi, %ecx
	movl	%esi, %edi
	xorl	%eax, %edi
	xorl	%edx, %edi
	leal	1859775393(%rdi,%rcx), %ecx
	roll	$11, %ecx
	movq	-192(%rbp), %rdi        ## 8-byte Reload
	addl	%edi, %eax
	movl	%edx, %edi
	xorl	%esi, %edi
	xorl	%ecx, %edi
	leal	1859775393(%rdi,%rax), %eax
	roll	$15, %eax
	addl	%ebx, %esi
	movl	%ecx, %edi
	xorl	%edx, %edi
	xorl	%eax, %edi
	leal	1859775393(%rdi,%rsi), %r13d
	roll	$3, %r13d
	addl	%r8d, %edx
	movl	%eax, %esi
	xorl	%ecx, %esi
	xorl	%r13d, %esi
	leal	1859775393(%rsi,%rdx), %r14d
	roll	$9, %r14d
	addl	%r15d, %ecx
	movl	%r13d, %edx
	xorl	%eax, %edx
	xorl	%r14d, %edx
	leal	1859775393(%rdx,%rcx), %r15d
	roll	$11, %r15d
	addl	%r12d, %eax
	movl	%r14d, %ecx
	xorl	%r13d, %ecx
	xorl	%r15d, %ecx
	leal	1859775393(%rcx,%rax), %r12d
	addl	$1732584193, %r13d      ## imm = 0x67452301
	addl	$-1732584194, %r15d     ## imm = 0xFFFFFFFF98BADCFE
	leaq	L_str(%rip), %rdi
	callq	_puts
	movl	-112(%rbp), %esi
	leaq	L_.str1(%rip), %rbx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	-108(%rbp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	-104(%rbp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	-100(%rbp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	-96(%rbp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	-92(%rbp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	-88(%rbp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	-84(%rbp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	-80(%rbp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	-76(%rbp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	-72(%rbp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	-68(%rbp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	-64(%rbp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	-60(%rbp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	-56(%rbp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	-52(%rbp), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	roll	$15, %r12d
	addl	$-271733879, %r12d      ## imm = 0xFFFFFFFFEFCDAB89
	addl	$271733878, %r14d       ## imm = 0x10325476
	bswapl	%r13d
	bswapl	%r12d
	bswapl	%r15d
	bswapl	%r14d
	leaq	L_.str2(%rip), %rdi
	xorl	%eax, %eax
	movl	%r13d, %esi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movl	%r14d, %r8d
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB7_2
## BB#1:
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB7_2:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp31:
	.cfi_def_cfa_offset 16
Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp33:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp              ## imm = 0x128
Ltmp34:
	.cfi_offset %rbx, -56
Ltmp35:
	.cfi_offset %r12, -48
Ltmp36:
	.cfi_offset %r13, -40
Ltmp37:
	.cfi_offset %r14, -32
Ltmp38:
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	xorl	%edi, %edi
	callq	_time
	movl	%eax, %edi
	callq	_srand
	movl	$-1, %esi
	.align	4, 0x90
LBB8_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	%esi, -332(%rbp)        ## 4-byte Spill
	callq	_rand
                                        ## kill: EAX<def> EAX<kill> RAX<def>
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$4, %ecx
	addl	%eax, %ecx
	andl	$-268435456, %ecx       ## imm = 0xFFFFFFFFF0000000
	negl	%ecx
	leal	1(%rax,%rcx), %eax
	movl	%eax, -244(%rbp)        ## 4-byte Spill
	callq	_rand
                                        ## kill: EAX<def> EAX<kill> RAX<def>
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$4, %ecx
	addl	%eax, %ecx
	andl	$-268435456, %ecx       ## imm = 0xFFFFFFFFF0000000
	movl	%eax, %r13d
	subl	%ecx, %r13d
	negl	%ecx
	leal	1(%rax,%rcx), %eax
	movl	%eax, -216(%rbp)        ## 4-byte Spill
	callq	_rand
                                        ## kill: EAX<def> EAX<kill> RAX<def>
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$4, %ecx
	addl	%eax, %ecx
	andl	$-268435456, %ecx       ## imm = 0xFFFFFFFFF0000000
	movl	%eax, %r12d
	subl	%ecx, %r12d
	negl	%ecx
	leal	1(%rax,%rcx), %eax
	movl	%eax, -224(%rbp)        ## 4-byte Spill
	callq	_rand
                                        ## kill: EAX<def> EAX<kill> RAX<def>
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$4, %ecx
	addl	%eax, %ecx
	andl	$-268435456, %ecx       ## imm = 0xFFFFFFFFF0000000
	negl	%ecx
	leal	1(%rax,%rcx), %r14d
	callq	_rand
                                        ## kill: EAX<def> EAX<kill> RAX<def>
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$4, %ecx
	addl	%eax, %ecx
	andl	$-268435456, %ecx       ## imm = 0xFFFFFFFFF0000000
	movl	%eax, %ebx
	subl	%ecx, %ebx
	negl	%ecx
	leal	1(%rax,%rcx), %r15d
	movq	%r15, -208(%rbp)        ## 8-byte Spill
	callq	_rand
	movl	%r14d, %r11d
	movl	-224(%rbp), %r10d       ## 4-byte Reload
	movl	-244(%rbp), %r8d        ## 4-byte Reload
                                        ## kill: EAX<def> EAX<kill> RAX<def>
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$4, %ecx
	addl	%eax, %ecx
	andl	$-268435456, %ecx       ## imm = 0xFFFFFFFFF0000000
	subl	%ecx, %eax
	leal	1(%rax), %r9d
	shll	$5, %r12d
	addl	$64, %r12d
	movl	%r11d, %edx
	orl	%r8d, %edx
	movl	%edx, %esi
	andl	%r12d, %esi
	movl	%r11d, %ecx
	andl	%r8d, %ecx
	orl	%ecx, %esi
	andl	%r10d, %edx
	orl	%ecx, %edx
	andl	$127, %r13d
	shll	$12, %r13d
	movl	-216(%rbp), %ecx        ## 4-byte Reload
	roll	$19, %ecx
	decl	%r13d
	movq	%r13, -288(%rbp)        ## 8-byte Spill
	movl	%r13d, %edi
	subl	%ecx, %edi
	leal	1(%rdi,%rbx), %ecx
	subl	%esi, %ecx
	addl	%edx, %ecx
	movl	%ecx, %edx
	orl	%r8d, %edx
	andl	%r11d, %edx
	movl	%ecx, %esi
	andl	%r8d, %esi
	orl	%edx, %esi
	movl	%r15d, %edx
	orl	%r8d, %edx
	andl	%r11d, %edx
	movl	%r15d, %edi
	andl	%r8d, %edi
	orl	%edx, %edi
	movl	%r12d, %r14d
	roll	$23, %r14d
	movl	%r10d, %edx
	roll	$23, %edx
	movl	%r14d, %ebx
	subl	%edx, %ebx
	leal	1(%rbx,%rax), %edx
	addl	%edi, %edx
	subl	%esi, %edx
	movl	%r9d, %eax
	roll	%eax
	movl	%edx, %esi
	roll	$21, %esi
	subl	%esi, %eax
	movl	%edx, %esi
	orl	%ecx, %esi
	andl	%r8d, %esi
	movl	%edx, %edi
	andl	%ecx, %edi
	orl	%esi, %edi
	movl	%eax, %esi
	subl	%edi, %esi
	movl	%r9d, %edi
	orl	%r15d, %edi
	andl	%r8d, %edi
	movl	%r9d, %ebx
	andl	%r15d, %ebx
	orl	%edi, %ebx
	addl	%esi, %ebx
	movl	%eax, %esi
	orl	%r9d, %esi
	andl	%r15d, %esi
	andl	%r9d, %eax
	movq	%r9, %r15
	orl	%esi, %eax
	movl	%ebx, %edi
	orl	%edx, %edi
	andl	%ecx, %edi
	movl	-332(%rbp), %esi        ## 4-byte Reload
	andl	%edx, %ebx
	orl	%edi, %ebx
	subl	%ebx, %eax
	incl	%esi
	cmpl	$1, %eax
	jne	LBB8_1
## BB#2:
	movl	%r11d, -228(%rbp)       ## 4-byte Spill
	movl	%r12d, -272(%rbp)       ## 4-byte Spill
	leaq	L_.str3(%rip), %rdi
	xorl	%eax, %eax
	movq	%rax, -296(%rbp)        ## 8-byte Spill
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%esi, -332(%rbp)        ## 4-byte Spill
	callq	_printf
	xorl	%eax, %eax
	movq	-208(%rbp), %rsi        ## 8-byte Reload
	movq	%r15, %rdi
	movq	%r14, %rcx
	movq	%rcx, -328(%rbp)        ## 8-byte Spill
	jmp	LBB8_3
	.align	4, 0x90
LBB8_9:                                 ##   in Loop: Header=BB8_3 Depth=1
	movl	%r11d, -244(%rbp)       ## 4-byte Spill
	movq	-296(%rbp), %rax        ## 8-byte Reload
	incl	%eax
	movq	%rax, -296(%rbp)        ## 8-byte Spill
	movq	-288(%rbp), %r13        ## 8-byte Reload
	movq	-208(%rbp), %rsi        ## 8-byte Reload
	movq	%r8, %rdi
	movq	-328(%rbp), %rcx        ## 8-byte Reload
	movq	-200(%rbp), %rax        ## 8-byte Reload
LBB8_3:                                 ## %.outer.outer
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_4 Depth 2
                                        ##       Child Loop BB8_5 Depth 3
                                        ##       Child Loop BB8_8 Depth 3
                                        ## kill: EAX<def> EAX<kill> RAX<kill>
	movl	%eax, -280(%rbp)        ## 4-byte Spill
LBB8_4:                                 ## %.outer
                                        ##   Parent Loop BB8_3 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB8_5 Depth 3
                                        ##       Child Loop BB8_8 Depth 3
	movq	%rdi, -256(%rbp)        ## 8-byte Spill
	movq	%rsi, -208(%rbp)        ## 8-byte Spill
	leal	(%r13,%rsi), %eax
	movl	%eax, -264(%rbp)        ## 4-byte Spill
	leal	(%rdi,%rcx), %eax
	movl	%eax, -268(%rbp)        ## 4-byte Spill
	movl	-280(%rbp), %ecx        ## 4-byte Reload
	.align	4, 0x90
LBB8_5:                                 ##   Parent Loop BB8_3 Depth=1
                                        ##     Parent Loop BB8_4 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	%ecx, %eax
	movq	%rax, -200(%rbp)        ## 8-byte Spill
	xorl	%edi, %edi
	callq	_time
	movl	%eax, %edi
	callq	_srand
	callq	_rand
	movl	$1, %r14d
	movb	%al, %cl
	shll	%cl, %r14d
	xorl	-244(%rbp), %r14d       ## 4-byte Folded Reload
	movq	%r14, -240(%rbp)        ## 8-byte Spill
	xorl	%edi, %edi
	callq	_time
	movl	%eax, %edi
	callq	_srand
	callq	_rand
	movl	$1, %edx
	movb	%al, %cl
	shll	%cl, %edx
	xorl	-216(%rbp), %edx        ## 4-byte Folded Reload
	movl	%edx, -192(%rbp)        ## 4-byte Spill
	xorl	%edi, %edi
	callq	_time
	movl	%eax, %edi
	callq	_srand
	callq	_rand
	movl	$1, %r15d
	movb	%al, %cl
	shll	%cl, %r15d
	xorl	-224(%rbp), %r15d       ## 4-byte Folded Reload
	xorl	%edi, %edi
	callq	_time
	movl	%eax, %edi
	callq	_srand
	callq	_rand
	movl	$1, %r13d
	movb	%al, %cl
	shll	%cl, %r13d
	xorl	-228(%rbp), %r13d       ## 4-byte Folded Reload
	xorl	%edi, %edi
	callq	_time
	movl	%eax, %edi
	callq	_srand
	callq	_rand
	movl	$1, %ebx
	movb	%al, %cl
	shll	%cl, %ebx
	movq	-208(%rbp), %rax        ## 8-byte Reload
	xorl	%eax, %ebx
	movl	%ebx, -184(%rbp)        ## 4-byte Spill
	xorl	%edi, %edi
	callq	_time
	movl	%eax, %edi
	callq	_srand
	callq	_rand
	movl	$1, %r9d
	movb	%al, %cl
	shll	%cl, %r9d
	movq	-256(%rbp), %rax        ## 8-byte Reload
	xorl	%eax, %r9d
	movl	%r13d, %r12d
	orl	%r14d, %r12d
	movl	%r12d, %ecx
	andl	-272(%rbp), %ecx        ## 4-byte Folded Reload
	movl	%r13d, %eax
	andl	%r14d, %eax
	orl	%eax, %ecx
	andl	%r15d, %r12d
	orl	%eax, %r12d
	movl	-192(%rbp), %eax        ## 4-byte Reload
	movl	%eax, %r8d
	roll	$19, %r8d
	movl	-264(%rbp), %eax        ## 4-byte Reload
	subl	%r8d, %eax
	subl	%ecx, %eax
	addl	%r12d, %eax
	movl	%eax, %ecx
	orl	%r14d, %ecx
	andl	%r13d, %ecx
	movl	%eax, %esi
	andl	%r14d, %esi
	orl	%ecx, %esi
	movl	%ebx, %ecx
	orl	%r14d, %ecx
	andl	%r13d, %ecx
	movl	%ebx, %r11d
	andl	%r14d, %r11d
	orl	%ecx, %r11d
	movl	%r15d, %edi
	roll	$23, %edi
	movl	-268(%rbp), %edx        ## 4-byte Reload
	subl	%edi, %edx
	addl	%r11d, %edx
	subl	%esi, %edx
	movl	%r9d, %r10d
	roll	$21, %r10d
	movl	%edx, %ecx
	roll	$21, %ecx
	movl	%r10d, %esi
	subl	%ecx, %esi
	movl	%esi, %ebx
	orl	%r9d, %ebx
	andl	-184(%rbp), %ebx        ## 4-byte Folded Reload
	movl	%esi, %r14d
	andl	%r9d, %r14d
	orl	%r14d, %ebx
	movl	%ebx, %ecx
	subl	%eax, %ecx
	cmpl	$1, %ecx
	movq	-200(%rbp), %rcx        ## 8-byte Reload
	leal	1(%rcx), %ecx
	jne	LBB8_5
## BB#6:                                ##   in Loop: Header=BB8_4 Depth=2
	movl	%ecx, -280(%rbp)        ## 4-byte Spill
	movl	%r12d, -312(%rbp)       ## 4-byte Spill
	movl	%r10d, -308(%rbp)       ## 4-byte Spill
	movl	%esi, -300(%rbp)        ## 4-byte Spill
	movl	%r11d, -304(%rbp)       ## 4-byte Spill
	movl	%r9d, -276(%rbp)        ## 4-byte Spill
	movl	-192(%rbp), %r10d       ## 4-byte Reload
	movl	%edi, -268(%rbp)        ## 4-byte Spill
	movq	%r8, -264(%rbp)         ## 8-byte Spill
	movq	-256(%rbp), %r8         ## 8-byte Reload
	movl	%r14d, %r9d
	notl	%r9d
	movl	%eax, %edi
	roll	$13, %edi
	movl	-184(%rbp), %esi        ## 4-byte Reload
	movl	%esi, %ecx
	movl	%esi, %r12d
	roll	$13, %ecx
	movl	%ecx, -316(%rbp)        ## 4-byte Spill
	movl	%ecx, %esi
	subl	%edi, %esi
	addl	%r9d, %esi
	movl	%esi, %r9d
	movl	$1, %edi
	movl	$4, %ecx
	movl	-244(%rbp), %r11d       ## 4-byte Reload
	.align	4, 0x90
LBB8_8:                                 ##   Parent Loop BB8_3 Depth=1
                                        ##     Parent Loop BB8_4 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	$1, %esi
	shll	%cl, %esi
	decl	%esi
	testl	%r9d, %esi
	jne	LBB8_9
## BB#7:                                ##   in Loop: Header=BB8_8 Depth=3
	incl	%edi
	addl	$4, %ecx
	cmpl	$8, %edi
	movq	-240(%rbp), %rsi        ## 8-byte Reload
	movl	%esi, %r11d
	movl	%r10d, -216(%rbp)       ## 4-byte Spill
	movl	%r15d, -224(%rbp)       ## 4-byte Spill
	movl	%r13d, %esi
	movl	%esi, -228(%rbp)        ## 4-byte Spill
	movl	%r12d, %esi
	movq	%rsi, -208(%rbp)        ## 8-byte Spill
	movl	-276(%rbp), %esi        ## 4-byte Reload
	movl	%esi, %r8d
	jle	LBB8_8
## BB#10:                               ##   in Loop: Header=BB8_4 Depth=2
	movl	%r15d, %ecx
	movq	%r13, %r8
	orl	%r8d, %ecx
	movl	%r10d, %r13d
	andl	%r13d, %ecx
	movl	%r15d, %esi
	andl	%r8d, %esi
	orl	%ecx, %esi
	movl	-276(%rbp), %r10d       ## 4-byte Reload
	movl	%r10d, %edi
	movl	%r12d, %r9d
	movl	%r9d, %esi
	movl	%r8d, %ecx
	movl	%ecx, -228(%rbp)        ## 4-byte Spill
	movl	%r15d, -224(%rbp)       ## 4-byte Spill
	movl	%r13d, -216(%rbp)       ## 4-byte Spill
	movq	-240(%rbp), %r12        ## 8-byte Reload
	movl	%r12d, %ecx
	movl	%ecx, -244(%rbp)        ## 4-byte Spill
	movq	-288(%rbp), %r13        ## 8-byte Reload
	movq	-328(%rbp), %rcx        ## 8-byte Reload
	jne	LBB8_4
## BB#11:
	movl	%edx, %ecx
	orl	%eax, %ecx
	andl	%r12d, %ecx
	andl	%eax, %edx
	orl	%ecx, %edx
	movl	-300(%rbp), %eax        ## 4-byte Reload
	movl	%eax, %ecx
	movl	%eax, %esi
	subl	%edx, %ecx
	movl	%r10d, %eax
	orl	%r9d, %eax
	andl	%r12d, %eax
	movl	%r10d, %r13d
	andl	%r9d, %r13d
	orl	%eax, %r13d
	addl	%r13d, %ecx
	movl	%esi, %eax
	roll	$25, %eax
	roll	$25, %ecx
	movq	%rcx, -216(%rbp)        ## 8-byte Spill
	subl	%ecx, %eax
	movl	%eax, -208(%rbp)        ## 4-byte Spill
	movl	%eax, %r15d
	movq	%r8, -192(%rbp)         ## 8-byte Spill
	callq	_rand
	callq	_rand
                                        ## kill: EAX<def> EAX<kill> RAX<def>
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$4, %ecx
	addl	%eax, %ecx
	andl	$-268435456, %ecx       ## imm = 0xFFFFFFFFF0000000
	negl	%ecx
	leal	1(%rax,%rcx), %eax
	movl	%eax, -60(%rbp)
	movl	-308(%rbp), %ecx        ## 4-byte Reload
	subl	%r15d, %ecx
	movl	%ecx, -56(%rbp)
	movl	-316(%rbp), %ecx        ## 4-byte Reload
	subl	%r14d, %ecx
	movl	%ecx, -52(%rbp)
	roll	$29, %r12d
	subl	%ebx, %r12d
	movq	-192(%rbp), %rcx        ## 8-byte Reload
	roll	$27, %ecx
	subl	-300(%rbp), %ecx        ## 4-byte Folded Reload
	subl	%r13d, %ecx
	movq	%rcx, -192(%rbp)        ## 8-byte Spill
	movl	-268(%rbp), %ebx        ## 4-byte Reload
	subl	-276(%rbp), %ebx        ## 4-byte Folded Reload
	subl	-304(%rbp), %ebx        ## 4-byte Folded Reload
	movq	-264(%rbp), %r13        ## 8-byte Reload
	subl	-184(%rbp), %r13d       ## 4-byte Folded Reload
	subl	-312(%rbp), %r13d       ## 4-byte Folded Reload
	movl	%r12d, -112(%rbp)
	movl	%ecx, -96(%rbp)
	movl	%ebx, -80(%rbp)
	movl	%r13d, -64(%rbp)
	movq	-216(%rbp), %rcx        ## 8-byte Reload
	subl	%eax, %ecx
	leal	(%rcx,%r13), %r14d
	movq	%rcx, %r15
	negl	%r14d
	callq	_rand
                                        ## kill: EAX<def> EAX<kill> RAX<def>
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$4, %ecx
	addl	%eax, %ecx
	andl	$-268435456, %ecx       ## imm = 0xFFFFFFFFF0000000
	subl	%ecx, %eax
	movq	%rax, -184(%rbp)        ## 8-byte Spill
	leal	1(%rax), %ecx
	movl	%ecx, -108(%rbp)
	callq	_rand
                                        ## kill: EAX<def> EAX<kill> RAX<def>
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$4, %ecx
	addl	%eax, %ecx
	andl	$-268435456, %ecx       ## imm = 0xFFFFFFFFF0000000
	subl	%ecx, %eax
	movq	%rax, -216(%rbp)        ## 8-byte Spill
	leal	1(%rax), %ecx
	movl	%ecx, -104(%rbp)
	callq	_rand
                                        ## kill: EAX<def> EAX<kill> RAX<def>
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$4, %ecx
	addl	%eax, %ecx
	andl	$-268435456, %ecx       ## imm = 0xFFFFFFFFF0000000
	subl	%ecx, %eax
	movq	%rax, -224(%rbp)        ## 8-byte Spill
	leal	1(%rax), %ecx
	movl	%ecx, -100(%rbp)
	callq	_rand
                                        ## kill: EAX<def> EAX<kill> RAX<def>
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$4, %ecx
	addl	%eax, %ecx
	andl	$-268435456, %ecx       ## imm = 0xFFFFFFFFF0000000
	subl	%ecx, %eax
	leal	1(%rax), %ecx
	movl	%ecx, -92(%rbp)
	decl	%r12d
	roll	$3, %r12d
	movq	-184(%rbp), %rcx        ## 8-byte Reload
	leal	-1732584193(%r12,%rcx), %ecx
	roll	$7, %ecx
	movq	-216(%rbp), %rdx        ## 8-byte Reload
	leal	-1732584193(%rcx,%rdx), %ecx
	roll	$11, %ecx
	movq	-224(%rbp), %rdx        ## 8-byte Reload
	leal	-1732584193(%rcx,%rdx), %ecx
	roll	$19, %ecx
	movq	-192(%rbp), %rdx        ## 8-byte Reload
	leal	-1732584194(%rdx,%rcx), %ecx
	roll	$3, %ecx
	leal	-1732584193(%rcx,%rax), %ecx
	roll	$7, %ecx
	movl	%r14d, %eax
	roll	$29, %eax
	subl	%ecx, %eax
	subl	%ebx, %eax
	movl	%ecx, %edx
	orl	$-271733879, %edx       ## imm = 0xFFFFFFFFEFCDAB89
	movl	$1732584194, %esi       ## imm = 0x67452302
	subl	%edx, %esi
	movl	%eax, %edx
	roll	$21, %edx
	addl	%esi, %edx
	movl	%edx, -88(%rbp)
	movl	%eax, %edx
	andl	$271733878, %edx        ## imm = 0x10325476
	movl	%eax, %esi
	notl	%esi
	andl	%ecx, %esi
	orl	%edx, %esi
	movl	$271733878, %ecx        ## imm = 0x10325476
	subl	%esi, %ecx
	movl	%ecx, -84(%rbp)
	movl	%r15d, %ecx
	roll	$25, %ecx
	addl	$-271733878, %ecx       ## imm = 0xFFFFFFFFEFCDAB8A
	leal	-1(%r15,%r13), %edx
	andl	%eax, %edx
	orl	%r14d, %edx
	subl	%edx, %ecx
	movl	%ecx, -76(%rbp)
	movl	-208(%rbp), %esi        ## 4-byte Reload
	movl	%esi, %ecx
	roll	$21, %ecx
	movl	%r15d, %edx
	notl	%edx
	orl	%r14d, %edx
	subl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, -72(%rbp)
	movl	%esi, %eax
	andl	%eax, %r15d
	notl	%eax
	andl	%r14d, %eax
	orl	%r15d, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	subl	%ecx, %eax
	movl	%eax, -68(%rbp)
	movaps	-112(%rbp), %xmm0
	movaps	-96(%rbp), %xmm1
	movaps	-80(%rbp), %xmm2
	movaps	-64(%rbp), %xmm3
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm0, -176(%rbp)
	movl	-64(%rbp), %eax
	incl	%eax
	movl	%eax, -128(%rbp)
	leaq	-112(%rbp), %rdi
	callq	_md4
	leaq	-176(%rbp), %rdi
	callq	_md4
	movq	-296(%rbp), %rax        ## 8-byte Reload
	addl	-332(%rbp), %eax        ## 4-byte Folded Reload
	movq	-200(%rbp), %rcx        ## 8-byte Reload
	addl	%ecx, %eax
	movslq	%eax, %rsi
	xorl	%edx, %edx
	testl	%esi, %esi
	je	LBB8_14
## BB#12:
	movq	%rsi, %rax
	.align	4, 0x90
LBB8_13:                                ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	sarq	%rcx
	incl	%edx
	incq	%rax
	cmpq	$2, %rax
	movq	%rcx, %rax
	ja	LBB8_13
LBB8_14:                                ## %._crit_edge
	leaq	L_.str4(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB8_16
## BB#15:                               ## %._crit_edge
	xorl	%eax, %eax
	addq	$296, %rsp              ## imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB8_16:                                ## %._crit_edge
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_hexrandom
	.align	4, 0x90
_hexrandom:                             ## @hexrandom
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp39:
	.cfi_def_cfa_offset 16
Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp41:
	.cfi_def_cfa_register %rbp
	xorl	%edi, %edi
	callq	_time
	movl	%eax, %edi
	callq	_srand
	callq	_rand
	movl	$1, %edx
	movb	%al, %cl
	shll	%cl, %edx
	movl	%edx, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals



.subsections_via_symbols
