	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 10
	.globl	_check
	.align	4, 0x90
_check:                                 ## @check
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
	decl	%edi
	movslq	%edi, %rax
	movq	_X0@GOTPCREL(%rip), %rcx
	movl	(%rcx,%rax,4), %ecx
	movq	_X1@GOTPCREL(%rip), %rdx
	cmpl	(%rdx,%rax,4), %ecx
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_collision
	.align	4, 0x90
_collision:                             ## @collision
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp6:
	.cfi_offset %rbx, -56
Ltmp7:
	.cfi_offset %r12, -48
Ltmp8:
	.cfi_offset %r13, -40
Ltmp9:
	.cfi_offset %r14, -32
Ltmp10:
	.cfi_offset %r15, -24
	movl	$1, %ecx
	movl	$17, %eax
	leaq	LJTI1_0(%rip), %rdx
	movq	_s@GOTPCREL(%rip), %r15
	.align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	%ecx, %edi
	sarl	$31, %edi
	shrl	$30, %edi
	addl	%ecx, %edi
	andl	$-4, %edi
	movl	%ecx, %esi
	subl	%edi, %esi
	cmpl	$3, %esi
	ja	LBB1_7
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	movslq	(%rdx,%rsi,4), %rsi
	addq	%rdx, %rsi
	jmpq	*%rsi
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	$19, (%r15,%rcx,4)
	jmp	LBB1_7
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	$3, (%r15,%rcx,4)
	jmp	LBB1_7
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	$7, (%r15,%rcx,4)
	jmp	LBB1_7
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	$11, (%r15,%rcx,4)
	.align	4, 0x90
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	incq	%rcx
	cmpq	$17, %rcx
	jne	LBB1_1
## BB#8:
	movl	$33, %ecx
	leaq	LJTI1_1(%rip), %rdx
	.align	4, 0x90
LBB1_9:                                 ## %.preheader77
                                        ## =>This Inner Loop Header: Depth=1
	movl	%eax, %edi
	sarl	$31, %edi
	shrl	$30, %edi
	addl	%eax, %edi
	andl	$-4, %edi
	movl	%eax, %esi
	subl	%edi, %esi
	cmpl	$3, %esi
	ja	LBB1_15
## BB#10:                               ## %.preheader77
                                        ##   in Loop: Header=BB1_9 Depth=1
	movslq	(%rdx,%rsi,4), %rsi
	addq	%rdx, %rsi
	jmpq	*%rsi
LBB1_14:                                ##   in Loop: Header=BB1_9 Depth=1
	movl	$13, (%r15,%rax,4)
	jmp	LBB1_15
LBB1_11:                                ##   in Loop: Header=BB1_9 Depth=1
	movl	$3, (%r15,%rax,4)
	jmp	LBB1_15
LBB1_12:                                ##   in Loop: Header=BB1_9 Depth=1
	movl	$5, (%r15,%rax,4)
	jmp	LBB1_15
LBB1_13:                                ##   in Loop: Header=BB1_9 Depth=1
	movl	$9, (%r15,%rax,4)
	.align	4, 0x90
LBB1_15:                                ##   in Loop: Header=BB1_9 Depth=1
	incq	%rax
	cmpq	$33, %rax
	jne	LBB1_9
## BB#16:
	leaq	LJTI1_2(%rip), %rax
	.align	4, 0x90
LBB1_17:                                ## %.preheader76
                                        ## =>This Inner Loop Header: Depth=1
	movl	%ecx, %esi
	sarl	$31, %esi
	shrl	$30, %esi
	addl	%ecx, %esi
	andl	$-4, %esi
	movl	%ecx, %edx
	subl	%esi, %edx
	cmpl	$3, %edx
	ja	LBB1_23
## BB#18:                               ## %.preheader76
                                        ##   in Loop: Header=BB1_17 Depth=1
	movslq	(%rax,%rdx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB1_22:                                ##   in Loop: Header=BB1_17 Depth=1
	movl	$15, (%r15,%rcx,4)
	jmp	LBB1_23
LBB1_19:                                ##   in Loop: Header=BB1_17 Depth=1
	movl	$3, (%r15,%rcx,4)
	jmp	LBB1_23
LBB1_20:                                ##   in Loop: Header=BB1_17 Depth=1
	movl	$9, (%r15,%rcx,4)
	jmp	LBB1_23
LBB1_21:                                ##   in Loop: Header=BB1_17 Depth=1
	movl	$11, (%r15,%rcx,4)
	.align	4, 0x90
LBB1_23:                                ##   in Loop: Header=BB1_17 Depth=1
	incq	%rcx
	cmpq	$49, %rcx
	jne	LBB1_17
## BB#24:
	movq	_j@GOTPCREL(%rip), %rbx
	movl	$0, (%rbx)
	movl	$1, %eax
	.align	4, 0x90
LBB1_25:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$3, %eax
	jg	LBB1_27
## BB#26:                               ##   in Loop: Header=BB1_25 Depth=1
	movl	-4(%rbx,%rax,4), %ecx
	leal	8(%rcx), %edx
	sarl	$31, %edx
	shrl	$28, %edx
	leal	8(%rcx,%rdx), %edx
	andl	$-16, %edx
	negl	%edx
	leal	8(%rcx,%rdx), %ecx
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	andl	$-2, %edx
	movl	%eax, %esi
	subl	%edx, %esi
	leal	1(%rsi), %edx
	movl	%edx, %edi
	shrl	$31, %edi
	leal	1(%rsi,%rdi), %esi
	andl	$1073741822, %esi       ## imm = 0x3FFFFFFE
	subl	%esi, %edx
	leal	(%rcx,%rdx,4), %ecx
	jmp	LBB1_31
	.align	4, 0x90
LBB1_27:                                ##   in Loop: Header=BB1_25 Depth=1
	movl	%eax, %ecx
	andl	$-4, %ecx
	cmpl	$12, %ecx
	je	LBB1_30
## BB#28:                               ##   in Loop: Header=BB1_25 Depth=1
	cmpl	$8, %ecx
	jne	LBB1_29
## BB#66:                               ##   in Loop: Header=BB1_25 Depth=1
	movl	-16(%rbx,%rax,4), %ecx
	decl	%ecx
	jmp	LBB1_31
LBB1_29:                                ##   in Loop: Header=BB1_25 Depth=1
	cmpl	$4, %ecx
	jne	LBB1_32
LBB1_30:                                ##   in Loop: Header=BB1_25 Depth=1
	movl	-16(%rbx,%rax,4), %ecx
	addl	$2, %ecx
LBB1_31:                                ##   in Loop: Header=BB1_25 Depth=1
	movl	%ecx, (%rbx,%rax,4)
LBB1_32:                                ##   in Loop: Header=BB1_25 Depth=1
	incq	%rax
	cmpq	$16, %rax
	jne	LBB1_25
## BB#33:
	movq	_Reg@GOTPCREL(%rip), %rbx
	movq	_X0@GOTPCREL(%rip), %r12
	movq	_X1@GOTPCREL(%rip), %r13
	movq	_Reg1@GOTPCREL(%rip), %r14
	.align	4, 0x90
LBB1_34:                                ## %.preheader75
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_50 Depth 2
                                        ##     Child Loop BB1_61 Depth 2
	movl	_B(%rip), %eax
	movl	%eax, (%rbx)
	callq	_rand
	movl	(%rbx), %ecx
	andl	$64, %ecx
	orl	%eax, %ecx
	movl	%ecx, 4(%rbx)
	shrdl	$3, %eax, %ecx
	movl	_B(%rip), %eax
	movl	_C(%rip), %edx
	andl	%eax, %edx
	notl	%eax
	andl	_D(%rip), %eax
	orl	%edx, %eax
	subl	%eax, %ecx
	subl	_A(%rip), %ecx
	movl	%ecx, (%r12)
	movl	%ecx, (%r13)
	callq	_rand
	andl	$-65, %eax
	movl	4(%rbx), %edx
	movl	%edx, %esi
	andl	$128, %esi
	orl	%eax, %esi
	movl	%edx, %ecx
	andl	$1024, %ecx             ## imm = 0x400
	orl	%esi, %ecx
	movl	%ecx, 8(%rbx)
	movl	$0, 8(%r14)
	shrdl	$7, %eax, %ecx
	movl	_B(%rip), %eax
	movl	%eax, %esi
	andl	%edx, %esi
	notl	%edx
	movl	_C(%rip), %edi
	andl	%edi, %edx
	orl	%esi, %edx
	movl	_D(%rip), %esi
	subl	%esi, %ecx
	subl	%edx, %ecx
	movl	%ecx, 4(%r12)
	movl	4(%r14), %edx
	andl	%edx, %eax
	notl	%edx
	andl	%edi, %edx
	orl	%eax, %edx
	negl	%edx
	subl	%esi, %edx
	movl	%edx, 4(%r13)
	xorl	%ecx, %edx
	cmpl	$-2147483648, %edx      ## imm = 0xFFFFFFFF80000000
	jne	LBB1_34
## BB#35:                               ##   in Loop: Header=BB1_34 Depth=1
	callq	_rand
	andl	$-1217, %eax            ## imm = 0xFFFFFFFFFFFFFB3F
	movl	8(%rbx), %esi
	movl	%esi, %edx
	andl	$33554432, %edx         ## imm = 0x2000000
	orl	%eax, %edx
	orl	$192, %edx
	movl	%edx, 12(%rbx)
	movb	12(%r15), %cl
	rorl	%cl, %edx
	movl	4(%rbx), %eax
	andl	%esi, %eax
	notl	%esi
	andl	(%rbx), %esi
	orl	%eax, %esi
	subl	-4(%rbx), %edx
	subl	%esi, %edx
	movl	%edx, 8(%r12)
	movl	8(%r14), %eax
	movl	12(%r14), %esi
	rorl	%cl, %esi
	movl	4(%r14), %ecx
	andl	%eax, %ecx
	notl	%eax
	andl	(%r14), %eax
	orl	%ecx, %eax
	subl	%eax, %esi
	subl	-4(%r14), %esi
	movl	%esi, 8(%r13)
	xorl	%edx, %esi
	cmpl	$-1879048192, %esi      ## imm = 0xFFFFFFFF90000000
	jne	LBB1_34
## BB#36:                               ##   in Loop: Header=BB1_34 Depth=1
	callq	_rand
	andl	$-33555649, %eax        ## imm = 0xFFFFFFFFFDFFFB3F
	orl	$64, %eax
	movl	%eax, 16(%rbx)
	movl	$0, 16(%r14)
	movb	16(%r15), %cl
	rorl	%cl, %eax
	movl	12(%rbx), %ecx
	movl	8(%rbx), %edx
	andl	%ecx, %edx
	notl	%ecx
	andl	4(%rbx), %ecx
	orl	%edx, %ecx
	subl	(%rbx), %eax
	subl	%ecx, %eax
	movl	%eax, 12(%r12)
	movl	12(%r14), %ecx
	movl	8(%r14), %edx
	andl	%ecx, %edx
	notl	%ecx
	andl	4(%r14), %ecx
	orl	%edx, %ecx
	negl	%ecx
	subl	(%r14), %ecx
	movl	%ecx, 12(%r13)
	cmpl	%ecx, %eax
	jne	LBB1_34
## BB#37:                               ##   in Loop: Header=BB1_34 Depth=1
	callq	_rand
	andl	$-33555585, %eax        ## imm = 0xFFFFFFFFFDFFFB7F
	movl	16(%rbx), %esi
	movl	%esi, %edx
	andl	$8192, %edx             ## imm = 0x2000
	orl	%eax, %edx
	orl	$1152, %edx             ## imm = 0x480
	movl	%edx, 20(%rbx)
	movb	20(%r15), %cl
	rorl	%cl, %edx
	movl	12(%rbx), %eax
	andl	%esi, %eax
	notl	%esi
	andl	8(%rbx), %esi
	orl	%eax, %esi
	subl	4(%rbx), %edx
	subl	%esi, %edx
	movl	%edx, 16(%r12)
	movl	16(%r14), %eax
	movl	20(%r14), %esi
	rorl	%cl, %esi
	movl	12(%r14), %ecx
	andl	%eax, %ecx
	notl	%eax
	andl	8(%r14), %eax
	orl	%ecx, %eax
	subl	%eax, %esi
	subl	4(%r14), %esi
	movl	%esi, 16(%r13)
	cmpl	%esi, %edx
	jne	LBB1_34
## BB#38:                               ##   in Loop: Header=BB1_34 Depth=1
	callq	_rand
	andl	$-33562625, %eax        ## imm = 0xFFFFFFFFFDFFDFFF
	movl	20(%rbx), %edx
	movl	%edx, %ecx
	andl	$262144, %ecx           ## imm = 0x40000
	orl	%eax, %ecx
	movl	%edx, %eax
	andl	$524288, %eax           ## imm = 0x80000
	orl	%ecx, %eax
	movl	%edx, %ecx
	andl	$1048576, %ecx          ## imm = 0x100000
	orl	%eax, %ecx
	movl	%edx, %eax
	andl	$2097152, %eax          ## imm = 0x200000
	orl	%ecx, %eax
	orl	$33554432, %eax         ## imm = 0x2000000
	movl	%eax, 24(%rbx)
	movl	$0, 24(%r14)
	movb	24(%r15), %cl
	rorl	%cl, %eax
	movl	16(%rbx), %ecx
	andl	%edx, %ecx
	notl	%edx
	andl	12(%rbx), %edx
	orl	%ecx, %edx
	subl	8(%rbx), %eax
	subl	%edx, %eax
	movl	%eax, 20(%r12)
	movl	20(%r14), %ecx
	movl	16(%r14), %edx
	andl	%ecx, %edx
	notl	%ecx
	andl	12(%r14), %ecx
	orl	%edx, %ecx
	negl	%ecx
	subl	8(%r14), %ecx
	movl	%ecx, 20(%r13)
	cmpl	%ecx, %eax
	jne	LBB1_34
## BB#39:                               ##   in Loop: Header=BB1_34 Depth=1
	callq	_rand
	andl	$-3940353, %eax         ## imm = 0xFFFFFFFFFFC3DFFF
	movl	24(%rbx), %edx
	movl	%edx, %ecx
	andl	$4096, %ecx             ## imm = 0x1000
	orl	%eax, %ecx
	movl	%edx, %eax
	andl	$16384, %eax            ## imm = 0x4000
	orl	%ecx, %eax
	orl	$1048576, %eax          ## imm = 0x100000
	movl	%eax, 28(%rbx)
	movb	28(%r15), %cl
	rorl	%cl, %eax
	movl	20(%rbx), %esi
	andl	%edx, %esi
	notl	%edx
	andl	16(%rbx), %edx
	orl	%esi, %edx
	subl	12(%rbx), %eax
	subl	%edx, %eax
	movl	%eax, 24(%r12)
	movl	24(%r14), %edx
	movl	28(%r14), %esi
	rorl	%cl, %esi
	movl	20(%r14), %ecx
	andl	%edx, %ecx
	notl	%edx
	andl	16(%r14), %edx
	orl	%ecx, %edx
	subl	%edx, %esi
	subl	12(%r14), %esi
	movl	%esi, 24(%r13)
	cmpl	%esi, %eax
	jne	LBB1_34
## BB#40:                               ##   in Loop: Header=BB1_34 Depth=1
	callq	_rand
	andl	$-3960833, %eax         ## imm = 0xFFFFFFFFFFC38FFF
	movl	28(%rbx), %esi
	movl	%esi, %edx
	andl	$65536, %edx            ## imm = 0x10000
	orl	%eax, %edx
	orl	$12288, %edx            ## imm = 0x3000
	movl	%edx, 32(%rbx)
	movl	$0, 32(%r14)
	movb	32(%r15), %cl
	rorl	%cl, %edx
	movl	24(%rbx), %eax
	andl	%esi, %eax
	notl	%esi
	andl	20(%rbx), %esi
	orl	%eax, %esi
	subl	16(%rbx), %edx
	subl	%esi, %edx
	movl	%edx, 28(%r12)
	movl	28(%r14), %eax
	movl	24(%r14), %ecx
	andl	%eax, %ecx
	notl	%eax
	andl	20(%r14), %eax
	orl	%ecx, %eax
	negl	%eax
	subl	16(%r14), %eax
	movl	%eax, 28(%r13)
	cmpl	%eax, %edx
	jne	LBB1_34
## BB#41:                               ##   in Loop: Header=BB1_34 Depth=1
	callq	_rand
	andl	$-4026369, %eax         ## imm = 0xFFFFFFFFFFC28FFF
	movl	32(%rbx), %edx
	movl	%edx, %ecx
	andl	$4194304, %ecx          ## imm = 0x400000
	orl	%eax, %ecx
	movl	%edx, %eax
	andl	$33554432, %eax         ## imm = 0x2000000
	orl	%ecx, %eax
	orl	$2125824, %eax          ## imm = 0x207000
	movl	%eax, 36(%rbx)
	movl	$0, 36(%r14)
	movb	36(%r15), %cl
	rorl	%cl, %eax
	movl	28(%rbx), %ecx
	andl	%edx, %ecx
	notl	%edx
	andl	24(%rbx), %edx
	orl	%ecx, %edx
	subl	20(%rbx), %eax
	subl	%edx, %eax
	movl	%eax, 32(%r12)
	movl	32(%r14), %ecx
	movl	28(%r14), %edx
	andl	%ecx, %edx
	notl	%ecx
	andl	24(%r14), %ecx
	orl	%edx, %ecx
	negl	%ecx
	subl	20(%r14), %ecx
	movl	%ecx, 32(%r13)
	cmpl	%ecx, %eax
	jne	LBB1_34
## BB#42:                               ##   in Loop: Header=BB1_34 Depth=1
	callq	_rand
	andl	$-41512961, %eax        ## imm = 0xFFFFFFFFFD868FFF
	movl	36(%rbx), %esi
	movl	%esi, %edx
	andl	$536870912, %edx        ## imm = 0x20000000
	orl	%eax, %edx
	leal	36728832(%rdx), %eax
	movl	%eax, 40(%rbx)
	orl	$4747264, %edx          ## imm = 0x487000
	movl	%edx, 40(%r14)
	movb	40(%r15), %cl
	rorl	%cl, %eax
	movl	32(%rbx), %edi
	andl	%esi, %edi
	notl	%esi
	andl	28(%rbx), %esi
	orl	%edi, %esi
	subl	24(%rbx), %eax
	subl	%esi, %eax
	movl	%eax, 36(%r12)
	rorl	%cl, %edx
	movl	36(%r14), %ecx
	movl	32(%r14), %esi
	andl	%ecx, %esi
	notl	%ecx
	andl	28(%r14), %ecx
	orl	%esi, %ecx
	subl	%ecx, %edx
	subl	24(%r14), %edx
	movl	%edx, 36(%r13)
	cmpl	%edx, %eax
	jne	LBB1_34
## BB#43:                               ##   in Loop: Header=BB1_34 Depth=1
	callq	_rand
	andl	$-578355201, %eax       ## imm = 0xFFFFFFFFDD86FFFF
	orl	$536936448, %eax        ## imm = 0x20010000
	movl	%eax, 44(%rbx)
	movl	$0, 44(%r14)
	movb	44(%r15), %cl
	rorl	%cl, %eax
	movl	40(%rbx), %ecx
	movl	36(%rbx), %edx
	andl	%ecx, %edx
	notl	%ecx
	andl	32(%rbx), %ecx
	orl	%edx, %ecx
	subl	28(%rbx), %eax
	subl	%ecx, %eax
	movl	%eax, 40(%r12)
	movl	40(%r14), %ecx
	movl	36(%r14), %edx
	andl	%ecx, %edx
	notl	%ecx
	andl	32(%r14), %ecx
	orl	%edx, %ecx
	negl	%ecx
	subl	28(%r14), %ecx
	movl	%ecx, 40(%r13)
	cmpl	%ecx, %eax
	jne	LBB1_34
## BB#44:                               ##   in Loop: Header=BB1_34 Depth=1
	callq	_rand
	andl	$1573388287, %eax       ## imm = 0x5DC7FFFF
	movl	44(%rbx), %esi
	movl	%esi, %edx
	andl	$4194304, %edx          ## imm = 0x400000
	orl	%eax, %edx
	orl	$36700160, %edx         ## imm = 0x2300000
	movl	%edx, 48(%rbx)
	movl	$0, 48(%r14)
	movb	48(%r15), %cl
	rorl	%cl, %edx
	movl	40(%rbx), %eax
	andl	%esi, %eax
	notl	%esi
	andl	36(%rbx), %esi
	orl	%eax, %esi
	subl	32(%rbx), %edx
	subl	%esi, %edx
	movl	%edx, 44(%r12)
	movl	44(%r14), %eax
	movl	40(%r14), %ecx
	andl	%eax, %ecx
	notl	%eax
	andl	36(%r14), %eax
	orl	%ecx, %eax
	negl	%eax
	subl	32(%r14), %eax
	movl	%eax, 44(%r13)
	cmpl	%eax, %edx
	jne	LBB1_34
## BB#45:                               ##   in Loop: Header=BB1_34 Depth=1
	callq	_rand
	andl	$1572863999, %eax       ## imm = 0x5DBFFFFF
	movl	48(%rbx), %edx
	movl	%edx, %ecx
	andl	$67108864, %ecx         ## imm = 0x4000000
	orl	%eax, %ecx
	movl	%edx, %eax
	andl	$268435456, %eax        ## imm = 0x10000000
	orl	%ecx, %eax
	orl	$536870912, %eax        ## imm = 0x20000000
	movl	%eax, 52(%rbx)
	movb	52(%r15), %cl
	rorl	%cl, %eax
	movl	44(%rbx), %esi
	andl	%edx, %esi
	notl	%edx
	andl	40(%rbx), %edx
	orl	%esi, %edx
	subl	36(%rbx), %eax
	subl	%edx, %eax
	movl	%eax, 48(%r12)
	movl	48(%r14), %edx
	movl	52(%r14), %esi
	rorl	%cl, %esi
	movl	44(%r14), %ecx
	andl	%edx, %ecx
	notl	%edx
	andl	40(%r14), %edx
	orl	%ecx, %edx
	subl	%edx, %esi
	subl	36(%r14), %esi
	movl	%esi, 48(%r13)
	xorl	%eax, %esi
	cmpl	$65536, %esi            ## imm = 0x10000
	jne	LBB1_34
## BB#46:                               ##   in Loop: Header=BB1_34 Depth=1
	callq	_rand
	andl	$1237319679, %eax       ## imm = 0x49BFFFFF
	orl	$574619648, %eax        ## imm = 0x22400000
	movl	%eax, 56(%rbx)
	movl	$0, 56(%r14)
	movb	56(%r15), %cl
	rorl	%cl, %eax
	movl	52(%rbx), %ecx
	movl	48(%rbx), %edx
	andl	%ecx, %edx
	notl	%ecx
	andl	44(%rbx), %ecx
	orl	%edx, %ecx
	subl	40(%rbx), %eax
	subl	%ecx, %eax
	movl	%eax, 52(%r12)
	movl	52(%r14), %ecx
	movl	48(%r14), %edx
	andl	%ecx, %edx
	notl	%ecx
	andl	44(%r14), %ecx
	orl	%edx, %ecx
	negl	%ecx
	subl	40(%r14), %ecx
	movl	%ecx, 52(%r13)
	cmpl	%ecx, %eax
	jne	LBB1_34
## BB#47:                               ##   in Loop: Header=BB1_34 Depth=1
	callq	_rand
	andl	$-910163969, %eax       ## imm = 0xFFFFFFFFC9BFFFFF
	movl	56(%rbx), %esi
	movl	%esi, %edx
	andl	$262144, %edx           ## imm = 0x40000
	orl	%eax, %edx
	orl	$37748736, %edx         ## imm = 0x2400000
	movl	%edx, 60(%rbx)
	movb	60(%r15), %cl
	rorl	%cl, %edx
	movl	52(%rbx), %eax
	andl	%esi, %eax
	notl	%esi
	andl	48(%rbx), %esi
	orl	%eax, %esi
	subl	44(%rbx), %edx
	subl	%esi, %edx
	movl	%edx, 56(%r12)
	movl	56(%r14), %eax
	movl	60(%r14), %esi
	rorl	%cl, %esi
	movl	52(%r14), %ecx
	andl	%eax, %ecx
	notl	%eax
	andl	48(%r14), %eax
	orl	%ecx, %eax
	subl	%eax, %esi
	subl	44(%r14), %esi
	movl	%esi, 56(%r13)
	cmpl	%esi, %edx
	jne	LBB1_34
## BB#48:                               ##   in Loop: Header=BB1_34 Depth=1
	callq	_rand
	andl	$-906231809, %eax       ## imm = 0xFFFFFFFFC9FBFFFF
	orl	$369098752, %eax        ## imm = 0x16000000
	movl	%eax, 64(%rbx)
	movl	$0, 64(%r14)
	movb	64(%r15), %cl
	movl	%eax, %esi
	rorl	%cl, %esi
	movl	60(%rbx), %ecx
	movl	56(%rbx), %edx
	andl	%ecx, %edx
	notl	%ecx
	andl	52(%rbx), %ecx
	orl	%edx, %ecx
	subl	48(%rbx), %esi
	subl	%ecx, %esi
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	movl	%esi, 60(%r12)
	movl	60(%r14), %ecx
	movl	56(%r14), %edx
	andl	%ecx, %edx
	notl	%ecx
	andl	52(%r14), %ecx
	orl	%edx, %ecx
	negl	%ecx
	subl	48(%r14), %ecx
	movl	%ecx, 60(%r13)
	cmpl	%ecx, %esi
	jne	LBB1_34
## BB#49:                               ## %.preheader73
                                        ##   in Loop: Header=BB1_34 Depth=1
	movl	_rt2(%rip), %r9d
	movq	128(%r15), %rcx
	movq	%rcx, -72(%rbp)         ## 8-byte Spill
	movl	$32, %r10d
	subl	%ecx, %r10d
	shrq	$32, %rcx
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	xorl	%esi, %esi
	movl	$17, %edx
	xorl	%r8d, %r8d
	.align	4, 0x90
LBB1_50:                                ##   Parent Loop BB1_34 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%edx, -44(%rbp)         ## 4-byte Spill
	cmpl	$60, %esi
	jne	LBB1_53
## BB#51:                               ## %.thread
                                        ##   in Loop: Header=BB1_50 Depth=2
	movq	112(%rbx), %rdx
	movl	124(%rbx), %ecx
	movq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edi
	orl	%ecx, %edi
	andl	120(%rbx), %edi
	andl	%ecx, %eax
	orl	%edi, %eax
	movq	-64(%rbp), %r8          ## 8-byte Reload
	leal	(%r8,%rdx), %edx
	addl	%r9d, %edx
	addl	%eax, %edx
	movl	%edx, %eax
	movq	-72(%rbp), %r11         ## 8-byte Reload
	movb	%r11b, %cl
	shll	%cl, %eax
	movb	%r10b, %cl
	shrl	%cl, %edx
	orl	%eax, %edx
	movl	%edx, 128(%rbx)
	movq	112(%r14), %rax
	movl	124(%r14), %ecx
	movq	%rax, %rdx
	shrq	$32, %rdx
	movl	%edx, %edi
	orl	%ecx, %edi
	andl	120(%r14), %edi
	andl	%ecx, %edx
	orl	%edi, %edx
	leal	(%r8,%rax), %eax
	addl	%r9d, %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movb	%r11b, %cl
	shll	%cl, %edx
	movb	%r10b, %cl
	shrl	%cl, %eax
	orl	%edx, %eax
	movl	%eax, 128(%r14)
	movl	68(%rbx,%rsi), %eax
	movl	68(%r14,%rsi), %r8d
	movl	-44(%rbp), %edx         ## 4-byte Reload
LBB1_52:                                ##   in Loop: Header=BB1_50 Depth=2
	cmpl	%r8d, %eax
	movl	%r8d, %eax
	je	LBB1_59
	jmp	LBB1_34
	.align	4, 0x90
LBB1_53:                                ##   in Loop: Header=BB1_50 Depth=2
	movl	56(%rbx,%rsi), %ecx
	movl	%ecx, %edx
	orl	%eax, %edx
	andl	60(%rbx,%rsi), %edx
	andl	%eax, %ecx
	orl	%edx, %ecx
	movslq	%esi, %rax
	imulq	$-2004318071, %rax, %rdx ## imm = 0xFFFFFFFF88888889
	shrq	$32, %rdx
	movl	%eax, %edi
	addl	%edx, %edi
	movl	%edi, %edx
	shrl	$31, %edx
	sarl	$3, %edi
	addl	%edx, %edi
	imull	$15, %edi, %edx
	subl	%edx, %eax
	movslq	%eax, %rdx
	movl	(%r12,%rdx,4), %eax
	addl	52(%rbx,%rsi), %eax
	addl	%ecx, %eax
	addl	%r9d, %eax
	movb	68(%r15,%rsi), %cl
	roll	%cl, %eax
	movl	%eax, 68(%rbx,%rsi)
	movl	56(%r14,%rsi), %r11d
	movl	%r11d, %edi
	orl	%r8d, %edi
	andl	60(%r14,%rsi), %edi
	andl	%r8d, %r11d
	orl	%edi, %r11d
	movl	(%r13,%rdx,4), %r8d
	addl	52(%r14,%rsi), %r8d
	addl	%r9d, %r8d
	addl	%r11d, %r8d
	roll	%cl, %r8d
	movl	%r8d, 68(%r14,%rsi)
	movl	-44(%rbp), %edx         ## 4-byte Reload
	cmpl	$21, %edx
	je	LBB1_58
## BB#54:                               ##   in Loop: Header=BB1_50 Depth=2
	cmpl	$20, %edx
	jne	LBB1_55
## BB#57:                               ##   in Loop: Header=BB1_50 Depth=2
	movl	80(%rbx), %ecx
	subl	80(%r14), %ecx
	cmpl	$-1610612736, %ecx      ## imm = 0xFFFFFFFFA0000000
	je	LBB1_59
	jmp	LBB1_34
LBB1_58:                                ##   in Loop: Header=BB1_50 Depth=2
	movl	84(%rbx), %ecx
	subl	84(%r14), %ecx
	cmpl	$1879048192, %ecx       ## imm = 0x70000000
	je	LBB1_59
	jmp	LBB1_34
LBB1_55:                                ##   in Loop: Header=BB1_50 Depth=2
	cmpl	$17, %edx
	jne	LBB1_52
## BB#56:                               ##   in Loop: Header=BB1_50 Depth=2
	movl	68(%rbx), %ecx
	subl	68(%r14), %ecx
	cmpl	$-1912602624, %ecx      ## imm = 0xFFFFFFFF8E000000
	jne	LBB1_34
	.align	4, 0x90
LBB1_59:                                ##   in Loop: Header=BB1_50 Depth=2
	addq	$4, %rsi
	incl	%edx
	cmpl	$33, %edx
	jl	LBB1_50
## BB#60:                               ## %.preheader
                                        ##   in Loop: Header=BB1_34 Depth=1
	movl	_rt3(%rip), %r11d
	movl	116(%rbx), %r10d
	movl	%r10d, -44(%rbp)        ## 4-byte Spill
	movl	120(%rbx), %r9d
	movl	128(%rbx), %edx
	movl	120(%r14), %eax
	movl	128(%r14), %esi
	movl	$0, %edi
	jmp	LBB1_61
	.align	4, 0x90
LBB1_65:                                ## %._crit_edge
                                        ##   in Loop: Header=BB1_61 Depth=2
	movl	136(%r15,%rdi,4), %ecx
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	movl	120(%rbx,%rdi,4), %ecx
	movl	%ecx, -44(%rbp)         ## 4-byte Spill
	incq	%rdi
LBB1_61:                                ##   Parent Loop BB1_34 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%r10d, %ecx
	movl	%r9d, %r10d
	movl	%eax, %r8d
	movl	124(%rbx,%rdi,4), %r9d
	xorl	%r9d, %edx
	xorl	%r10d, %edx
	addl	%ecx, %edx
	movl	124(%r14,%rdi,4), %eax
	xorl	%eax, %esi
	xorl	%r8d, %esi
	addl	-44(%rbp), %esi         ## 4-byte Folded Reload
	movq	_j@GOTPCREL(%rip), %rcx
	movslq	(%rcx,%rdi,4), %rcx
	addl	(%r12,%rcx,4), %edx
	addl	(%r13,%rcx,4), %esi
	addl	%r11d, %edx
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	roll	%cl, %edx
	movl	%edx, 132(%rbx,%rdi,4)
	addl	%r11d, %esi
                                        ## kill: CL<def> CL<kill> RCX<kill>
	roll	%cl, %esi
	movl	%esi, 132(%r14,%rdi,4)
	leal	33(%rdi), %ecx
	cmpl	$37, %ecx
	je	LBB1_34
## BB#62:                               ##   in Loop: Header=BB1_61 Depth=2
	cmpl	$36, %ecx
	jne	LBB1_64
## BB#63:                               ##   in Loop: Header=BB1_61 Depth=2
	movl	144(%r14), %ecx
	xorl	144(%rbx), %ecx
	cmpl	$-2147483648, %ecx      ## imm = 0xFFFFFFFF80000000
	je	LBB1_65
	jmp	LBB1_34
	.align	4, 0x90
LBB1_64:                                ##   in Loop: Header=BB1_61 Depth=2
	cmpl	%esi, %edx
	jne	LBB1_34
	jmp	LBB1_65
	.cfi_endproc
	.align	2, 0x90
L1_0_set_6 = LBB1_6-LJTI1_0
L1_0_set_3 = LBB1_3-LJTI1_0
L1_0_set_4 = LBB1_4-LJTI1_0
L1_0_set_5 = LBB1_5-LJTI1_0
LJTI1_0:
	.long	L1_0_set_6
	.long	L1_0_set_3
	.long	L1_0_set_4
	.long	L1_0_set_5
L1_1_set_14 = LBB1_14-LJTI1_1
L1_1_set_11 = LBB1_11-LJTI1_1
L1_1_set_12 = LBB1_12-LJTI1_1
L1_1_set_13 = LBB1_13-LJTI1_1
LJTI1_1:
	.long	L1_1_set_14
	.long	L1_1_set_11
	.long	L1_1_set_12
	.long	L1_1_set_13
L1_2_set_22 = LBB1_22-LJTI1_2
L1_2_set_19 = LBB1_19-LJTI1_2
L1_2_set_20 = LBB1_20-LJTI1_2
L1_2_set_21 = LBB1_21-LJTI1_2
LJTI1_2:
	.long	L1_2_set_22
	.long	L1_2_set_19
	.long	L1_2_set_20
	.long	L1_2_set_21

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI2_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI2_1:
	.quad	4841369599423283200     ## double 4.503600e+15
	.quad	4985484787499139072     ## double 1.934281e+25
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI2_2:
	.quad	4696837146684686336     ## double 1.0E+6
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp11:
	.cfi_def_cfa_offset 16
Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp13:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp14:
	.cfi_offset %rbx, -56
Ltmp15:
	.cfi_offset %r12, -48
Ltmp16:
	.cfi_offset %r13, -40
Ltmp17:
	.cfi_offset %r14, -32
Ltmp18:
	.cfi_offset %r15, -24
	callq	_clock
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	xorl	%edi, %edi
	callq	_time
	movl	%eax, %edi
	callq	_srand
	callq	_collision
	leaq	L_str(%rip), %rdi
	callq	_puts
	movq	_X0@GOTPCREL(%rip), %rbx
	leaq	L_.str2(%rip), %r12
	movl	$4102, %r13d            ## imm = 0x1006
	leaq	L_.str1(%rip), %r15
	xorl	%r14d, %r14d
	.align	4, 0x90
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%rbx,%r14,4), %esi
	cmpl	$12, %r14d
	ja	LBB2_4
## BB#2:                                ##   in Loop: Header=BB2_1 Depth=1
	btl	%r14d, %r13d
	jae	LBB2_4
## BB#3:                                ##   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	%r15, %rdi
	jmp	LBB2_5
	.align	4, 0x90
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	%r12, %rdi
LBB2_5:                                 ##   in Loop: Header=BB2_1 Depth=1
	callq	_printf
	incq	%r14
	testb	$3, %r14b
	jne	LBB2_6
## BB#15:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	$10, %edi
	callq	_putchar
LBB2_6:                                 ## %.backedge12
                                        ##   in Loop: Header=BB2_1 Depth=1
	cmpq	$16, %r14
	jne	LBB2_1
## BB#7:
	leaq	L_str8(%rip), %rdi
	callq	_puts
	movq	_X1@GOTPCREL(%rip), %r14
	leaq	L_.str2(%rip), %r12
	movl	$4102, %r13d            ## imm = 0x1006
	leaq	L_.str1(%rip), %r15
	xorl	%ebx, %ebx
	.align	4, 0x90
LBB2_8:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%r14,%rbx,4), %esi
	cmpl	$12, %ebx
	ja	LBB2_11
## BB#9:                                ##   in Loop: Header=BB2_8 Depth=1
	btl	%ebx, %r13d
	jae	LBB2_11
## BB#10:                               ##   in Loop: Header=BB2_8 Depth=1
	xorl	%eax, %eax
	movq	%r15, %rdi
	jmp	LBB2_12
	.align	4, 0x90
LBB2_11:                                ##   in Loop: Header=BB2_8 Depth=1
	xorl	%eax, %eax
	movq	%r12, %rdi
LBB2_12:                                ##   in Loop: Header=BB2_8 Depth=1
	callq	_printf
	incq	%rbx
	testb	$3, %bl
	jne	LBB2_13
## BB#16:                               ##   in Loop: Header=BB2_8 Depth=1
	movl	$10, %edi
	callq	_putchar
LBB2_13:                                ## %.backedge
                                        ##   in Loop: Header=BB2_8 Depth=1
	cmpq	$16, %rbx
	jne	LBB2_8
## BB#14:
	movl	$10, %edi
	callq	_putchar
	leaq	L_str9(%rip), %rdi
	callq	_puts
	movq	_Reg@GOTPCREL(%rip), %rax
	movl	180(%rax), %esi
	movq	184(%rax), %rdx
	movq	%rdx, %rcx
	shrq	$32, %rcx
	movl	192(%rax), %r8d
	leaq	L_.str6(%rip), %rdi
	xorl	%eax, %eax
                                        ## kill: EDX<def> EDX<kill> RDX<kill>
                                        ## kill: ECX<def> ECX<kill> RCX<kill>
	callq	_printf
	callq	_clock
	subq	-48(%rbp), %rax         ## 8-byte Folded Reload
	movd	%rax, %xmm0
	punpckldq	LCPI2_0(%rip), %xmm0 ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI2_1(%rip), %xmm0
	haddpd	%xmm0, %xmm0
	divsd	LCPI2_2(%rip), %xmm0
	leaq	L_.str7(%rip), %rdi
	movb	$1, %al
	callq	_printf
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.section	__DATA,__data
	.globl	_A                      ## @A
	.align	2
_A:
	.long	1732584193              ## 0x67452301

	.globl	_B                      ## @B
	.align	2
_B:
	.long	4023233417              ## 0xefcdab89

	.globl	_C                      ## @C
	.align	2
_C:
	.long	2562383102              ## 0x98badcfe

	.globl	_D                      ## @D
	.align	2
_D:
	.long	271733878               ## 0x10325476

	.globl	_rt2                    ## @rt2
	.align	2
_rt2:
	.long	1518500249              ## 0x5a827999

	.globl	_rt3                    ## @rt3
	.align	2
_rt3:
	.long	1859775393              ## 0x6ed9eba1

	.comm	_X0,64,4                ## @X0
	.comm	_X1,64,4                ## @X1
	.comm	_s,196,4                ## @s
	.comm	_j,64,4                 ## @j
	.comm	_Reg,196,4              ## @Reg
	.comm	_Reg1,196,4             ## @Reg1
	.section	__TEXT,__cstring,cstring_literals
L_.str1:                                ## @.str1
	.asciz	"%08X "

L_.str2:                                ## @.str2
	.asciz	"%08x "

L_.str6:                                ## @.str6
	.asciz	"\n%#x %x %x %x\n"

L_.str7:                                ## @.str7
	.asciz	"\nThe time is %f seconds.\n"

	.align	4                       ## @str


.subsections_via_symbols
