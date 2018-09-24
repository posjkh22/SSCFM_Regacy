	.text
	.file	"susan.c"
	.globl	usage                   # -- Begin function usage
	.p2align	4, 0x90
	.type	usage,@function
usage:                                  # @usage
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi0:
	.cfi_def_cfa_offset 16
.Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$65537, %edi            # imm = 0x10001
	callq	enqueue_signature
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
# BB#1:
	movl	$65538, %edi            # imm = 0x10002
	callq	enqueue_signature
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
# BB#2:
	movl	$65539, %edi            # imm = 0x10003
	callq	enqueue_signature
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
# BB#3:
	movl	$65540, %edi            # imm = 0x10004
	callq	enqueue_signature
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
# BB#4:
	movl	$65541, %edi            # imm = 0x10005
	callq	enqueue_signature
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
# BB#5:
	movl	$65542, %edi            # imm = 0x10006
	callq	enqueue_signature
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	printf
# BB#6:
	movl	$65543, %edi            # imm = 0x10007
	callq	enqueue_signature
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	printf
# BB#7:
	movl	$65544, %edi            # imm = 0x10008
	callq	enqueue_signature
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	printf
# BB#8:
	movl	$65545, %edi            # imm = 0x10009
	callq	enqueue_signature
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	printf
# BB#9:
	movl	$65546, %edi            # imm = 0x1000A
	callq	enqueue_signature
	movabsq	$.L.str.9, %rdi
	movb	$0, %al
	callq	printf
# BB#10:
	movl	$65547, %edi            # imm = 0x1000B
	callq	enqueue_signature
	movabsq	$.L.str.10, %rdi
	movb	$0, %al
	callq	printf
# BB#11:
	movl	$65548, %edi            # imm = 0x1000C
	callq	enqueue_signature
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	printf
# BB#12:
	movl	$65549, %edi            # imm = 0x1000D
	callq	enqueue_signature
	movabsq	$.L.str.12, %rdi
	movb	$0, %al
	callq	printf
# BB#13:
	movl	$65550, %edi            # imm = 0x1000E
	callq	enqueue_signature
	xorl	%edi, %edi
	callq	exit
# BB#14:
	movl	$65551, %edi            # imm = 0x1000F
	callq	enqueue_signature
.Lfunc_end0:
	.size	usage, .Lfunc_end0-usage
	.cfi_endproc
                                        # -- End function
	.globl	getint                  # -- Begin function getint
	.p2align	4, 0x90
	.type	getint,@function
getint:                                 # @getint
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi3:
	.cfi_def_cfa_offset 16
.Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi5:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$10024, %rsp            # imm = 0x2728
.Lcfi6:
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movl	$262145, %edi           # imm = 0x40001
	callq	enqueue_signature
	movq	%rbx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, %ebx
# BB#1:
	movl	$262146, %edi           # imm = 0x40002
	callq	enqueue_signature
	movl	%ebx, -12(%rbp)
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movl	$262147, %edi           # imm = 0x40003
	callq	enqueue_signature
	cmpl	$35, -12(%rbp)
	jne	.LBB1_4
# BB#3:                                 #   in Loop: Header=BB1_2 Depth=1
	movl	$262148, %edi           # imm = 0x40004
	callq	enqueue_signature
	leaq	-10032(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movl	$9000, %esi             # imm = 0x2328
	callq	fgets
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$262149, %edi           # imm = 0x40005
	callq	enqueue_signature
	cmpl	$-1, -12(%rbp)
	jne	.LBB1_8
# BB#5:
	movl	$262150, %edi           # imm = 0x40006
	callq	enqueue_signature
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
# BB#6:
	movl	$262151, %edi           # imm = 0x40007
	callq	enqueue_signature
	xorl	%edi, %edi
	callq	exit
# BB#7:
	movl	$262152, %edi           # imm = 0x40008
	callq	enqueue_signature
.LBB1_8:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$262153, %edi           # imm = 0x40009
	callq	enqueue_signature
	cmpl	$48, -12(%rbp)
	jl	.LBB1_11
# BB#9:                                 #   in Loop: Header=BB1_2 Depth=1
	movl	$262154, %edi           # imm = 0x4000A
	callq	enqueue_signature
	cmpl	$57, -12(%rbp)
	jg	.LBB1_11
# BB#10:
	movl	$262155, %edi           # imm = 0x4000B
	callq	enqueue_signature
	jmp	.LBB1_13
.LBB1_11:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$262156, %edi           # imm = 0x4000C
	callq	enqueue_signature
	movq	-32(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, %ebx
# BB#12:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$262157, %edi           # imm = 0x4000D
	callq	enqueue_signature
	movl	%ebx, -12(%rbp)
	jmp	.LBB1_2
.LBB1_13:
	movl	$262158, %edi           # imm = 0x4000E
	callq	enqueue_signature
	movl	$0, -16(%rbp)
.LBB1_14:                               # =>This Inner Loop Header: Depth=1
	movl	$262159, %edi           # imm = 0x4000F
	callq	enqueue_signature
	imull	$10, -16(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$48, %ecx
	addl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	movq	-32(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, %ebx
# BB#15:                                #   in Loop: Header=BB1_14 Depth=1
	movl	$262160, %edi           # imm = 0x40010
	callq	enqueue_signature
	movl	%ebx, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.LBB1_17
# BB#16:
	movl	$262161, %edi           # imm = 0x40011
	callq	enqueue_signature
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB1_22
.LBB1_17:                               #   in Loop: Header=BB1_14 Depth=1
	movl	$262162, %edi           # imm = 0x40012
	callq	enqueue_signature
	cmpl	$48, -12(%rbp)
	jl	.LBB1_19
# BB#18:                                #   in Loop: Header=BB1_14 Depth=1
	movl	$262163, %edi           # imm = 0x40013
	callq	enqueue_signature
	cmpl	$57, -12(%rbp)
	jle	.LBB1_20
.LBB1_19:
	movl	$262164, %edi           # imm = 0x40014
	callq	enqueue_signature
	jmp	.LBB1_21
.LBB1_20:                               #   in Loop: Header=BB1_14 Depth=1
	movl	$262165, %edi           # imm = 0x40015
	callq	enqueue_signature
	jmp	.LBB1_14
.LBB1_21:
	movl	$262166, %edi           # imm = 0x40016
	callq	enqueue_signature
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB1_22:
	movl	$262167, %edi           # imm = 0x40017
	callq	enqueue_signature_with_return
	movl	-20(%rbp), %eax
	addq	$10024, %rsp            # imm = 0x2728
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	getint, .Lfunc_end1-getint
	.cfi_endproc
                                        # -- End function
	.globl	get_image               # -- Begin function get_image
	.p2align	4, 0x90
	.type	get_image,@function
get_image:                              # @get_image
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi7:
	.cfi_def_cfa_offset 16
.Lcfi8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi9:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
.Lcfi10:
	.cfi_offset %rbx, -48
.Lcfi11:
	.cfi_offset %r12, -40
.Lcfi12:
	.cfi_offset %r14, -32
.Lcfi13:
	.cfi_offset %r15, -24
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$524289, %edi           # imm = 0x80001
	callq	enqueue_signature
	movabsq	$.L.str.15, %rsi
	movq	%rbx, -48(%rbp)
	movq	%r12, -72(%rbp)
	movq	%r15, -64(%rbp)
	movq	%r14, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	fopen
	movq	%rax, %rbx
# BB#1:
	movl	$524290, %edi           # imm = 0x80002
	callq	enqueue_signature
	movq	%rbx, -40(%rbp)
	cmpq	$0, %rbx
	jne	.LBB2_5
# BB#2:
	movl	$524291, %edi           # imm = 0x80003
	callq	enqueue_signature
	movabsq	$.L.str.16, %rsi
	movq	stderr, %rdi
	movq	-48(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
# BB#3:
	movl	$524292, %edi           # imm = 0x80004
	callq	enqueue_signature
	xorl	%edi, %edi
	callq	exit
# BB#4:
	movl	$524293, %edi           # imm = 0x80005
	callq	enqueue_signature_with_return
.LBB2_5:
	movl	$524294, %edi           # imm = 0x80006
	callq	enqueue_signature
	movq	-40(%rbp), %rdi
	callq	fgetc
	movl	%eax, %ebx
# BB#6:
	movl	$524295, %edi           # imm = 0x80007
	callq	enqueue_signature
	movb	%bl, -176(%rbp)
	movq	-40(%rbp), %rdi
	callq	fgetc
	movl	%eax, %ebx
# BB#7:
	movl	$524296, %edi           # imm = 0x80008
	callq	enqueue_signature
	movb	%bl, -175(%rbp)
	movsbl	-176(%rbp), %eax
	cmpl	$80, %eax
	jne	.LBB2_9
# BB#8:
	movl	$524297, %edi           # imm = 0x80009
	callq	enqueue_signature
	movsbl	-175(%rbp), %eax
	cmpl	$53, %eax
	je	.LBB2_12
.LBB2_9:
	movl	$524298, %edi           # imm = 0x8000A
	callq	enqueue_signature
	movabsq	$.L.str.17, %rsi
	movq	stderr, %rdi
	movq	-48(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
# BB#10:
	movl	$524299, %edi           # imm = 0x8000B
	callq	enqueue_signature
	xorl	%edi, %edi
	callq	exit
# BB#11:
	movl	$524300, %edi           # imm = 0x8000C
	callq	enqueue_signature
.LBB2_12:
	movl	$524301, %edi           # imm = 0x8000D
	callq	enqueue_signature_with_call
	movq	-40(%rbp), %rdi
	callq	getint
	movl	%eax, %ebx
# BB#13:
	movl	$524302, %edi           # imm = 0x8000E
	callq	enqueue_signature_with_call
	movq	-64(%rbp), %rax
	movl	%ebx, (%rax)
	movq	-40(%rbp), %rdi
	callq	getint
	movl	%eax, %ebx
# BB#14:
	movl	$524303, %edi           # imm = 0x8000F
	callq	enqueue_signature_with_call
	movq	-56(%rbp), %rax
	movl	%ebx, (%rax)
	movq	-40(%rbp), %rdi
	callq	getint
	movl	%eax, %ebx
# BB#15:
	movl	$524304, %edi           # imm = 0x80010
	callq	enqueue_signature
	movl	%ebx, -76(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movq	-56(%rbp), %rcx
	imull	(%rcx), %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, %rbx
# BB#16:
	movl	$524305, %edi           # imm = 0x80011
	callq	enqueue_signature
	movq	-72(%rbp), %rax
	movq	%rbx, (%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movq	-56(%rbp), %rcx
	imull	(%rcx), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rcx
	movl	$1, %esi
	callq	fread
	movq	%rax, %rbx
# BB#17:
	movl	$524306, %edi           # imm = 0x80012
	callq	enqueue_signature
	cmpq	$0, %rbx
	jne	.LBB2_21
# BB#18:
	movl	$524307, %edi           # imm = 0x80013
	callq	enqueue_signature
	movabsq	$.L.str.18, %rsi
	movq	stderr, %rdi
	movq	-48(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
# BB#19:
	movl	$524308, %edi           # imm = 0x80014
	callq	enqueue_signature
	xorl	%edi, %edi
	callq	exit
# BB#20:
	movl	$524309, %edi           # imm = 0x80015
	callq	enqueue_signature
.LBB2_21:
	movl	$524310, %edi           # imm = 0x80016
	callq	enqueue_signature
	movq	-40(%rbp), %rdi
	callq	fclose
# BB#22:
	movl	$524311, %edi           # imm = 0x80017
	callq	enqueue_signature_with_return
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	get_image, .Lfunc_end2-get_image
	.cfi_endproc
                                        # -- End function
	.globl	put_image               # -- Begin function put_image
	.p2align	4, 0x90
	.type	put_image,@function
put_image:                              # @put_image
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi14:
	.cfi_def_cfa_offset 16
.Lcfi15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi16:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
.Lcfi17:
	.cfi_offset %rbx, -48
.Lcfi18:
	.cfi_offset %r12, -40
.Lcfi19:
	.cfi_offset %r14, -32
.Lcfi20:
	.cfi_offset %r15, -24
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$917505, %edi           # imm = 0xE0001
	callq	enqueue_signature
	movabsq	$.L.str.19, %rsi
	movq	%rbx, -56(%rbp)
	movq	%r12, -64(%rbp)
	movl	%r15d, -48(%rbp)
	movl	%r14d, -44(%rbp)
	movq	-56(%rbp), %rdi
	callq	fopen
	movq	%rax, %rbx
# BB#1:
	movl	$917506, %edi           # imm = 0xE0002
	callq	enqueue_signature
	movq	%rbx, -40(%rbp)
	cmpq	$0, %rbx
	jne	.LBB3_5
# BB#2:
	movl	$917507, %edi           # imm = 0xE0003
	callq	enqueue_signature
	movabsq	$.L.str.20, %rsi
	movq	stderr, %rdi
	movq	-56(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
# BB#3:
	movl	$917508, %edi           # imm = 0xE0004
	callq	enqueue_signature
	xorl	%edi, %edi
	callq	exit
# BB#4:
	movl	$917509, %edi           # imm = 0xE0005
	callq	enqueue_signature
.LBB3_5:
	movl	$917510, %edi           # imm = 0xE0006
	callq	enqueue_signature
	movabsq	$.L.str.21, %rsi
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
# BB#6:
	movl	$917511, %edi           # imm = 0xE0007
	callq	enqueue_signature
	movabsq	$.L.str.22, %rsi
	movq	-40(%rbp), %rdi
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %ecx
	movb	$0, %al
	callq	fprintf
# BB#7:
	movl	$917512, %edi           # imm = 0xE0008
	callq	enqueue_signature
	movabsq	$.L.str.23, %rsi
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
# BB#8:
	movl	$917513, %edi           # imm = 0xE0009
	callq	enqueue_signature
	movq	-64(%rbp), %rdi
	movl	-48(%rbp), %eax
	imull	-44(%rbp), %eax
	movslq	%eax, %rsi
	movq	-40(%rbp), %rcx
	movl	$1, %edx
	callq	fwrite
	movq	%rax, %rbx
# BB#9:
	movl	$917514, %edi           # imm = 0xE000A
	callq	enqueue_signature
	cmpq	$1, %rbx
	je	.LBB3_13
# BB#10:
	movl	$917515, %edi           # imm = 0xE000B
	callq	enqueue_signature
	movabsq	$.L.str.24, %rsi
	movq	stderr, %rdi
	movq	-56(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
# BB#11:
	movl	$917516, %edi           # imm = 0xE000C
	callq	enqueue_signature
	xorl	%edi, %edi
	callq	exit
# BB#12:
	movl	$917517, %edi           # imm = 0xE000D
	callq	enqueue_signature
.LBB3_13:
	movl	$917518, %edi           # imm = 0xE000E
	callq	enqueue_signature
	movq	-40(%rbp), %rdi
	callq	fclose
# BB#14:
	movl	$917519, %edi           # imm = 0xE000F
	callq	enqueue_signature_with_return
	movl	-68(%rbp), %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	put_image, .Lfunc_end3-put_image
	.cfi_endproc
                                        # -- End function
	.globl	int_to_uchar            # -- Begin function int_to_uchar
	.p2align	4, 0x90
	.type	int_to_uchar,@function
int_to_uchar:                           # @int_to_uchar
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi21:
	.cfi_def_cfa_offset 16
.Lcfi22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi23:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
.Lcfi24:
	.cfi_offset %rbx, -40
.Lcfi25:
	.cfi_offset %r14, -32
.Lcfi26:
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$1048577, %edi          # imm = 0x100001
	callq	enqueue_signature
	movq	%rbx, -48(%rbp)
	movq	%r15, -64(%rbp)
	movl	%r14d, -52(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -28(%rbp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movl	$1048578, %edi          # imm = 0x100002
	callq	enqueue_signature
	movl	-28(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB4_8
# BB#2:                                 #   in Loop: Header=BB4_1 Depth=1
	movl	$1048579, %edi          # imm = 0x100003
	callq	enqueue_signature
	movq	-48(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-32(%rbp), %eax
	jle	.LBB4_4
# BB#3:                                 #   in Loop: Header=BB4_1 Depth=1
	movl	$1048580, %edi          # imm = 0x100004
	callq	enqueue_signature
	movq	-48(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -32(%rbp)
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	movl	$1048581, %edi          # imm = 0x100005
	callq	enqueue_signature
	movq	-48(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB4_6
# BB#5:                                 #   in Loop: Header=BB4_1 Depth=1
	movl	$1048582, %edi          # imm = 0x100006
	callq	enqueue_signature
	movq	-48(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -36(%rbp)
.LBB4_6:                                #   in Loop: Header=BB4_1 Depth=1
	movl	$1048583, %edi          # imm = 0x100007
	callq	enqueue_signature
# BB#7:                                 #   in Loop: Header=BB4_1 Depth=1
	movl	$1048584, %edi          # imm = 0x100008
	callq	enqueue_signature
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB4_1
.LBB4_8:
	movl	$1048585, %edi          # imm = 0x100009
	callq	enqueue_signature
	movl	-36(%rbp), %eax
	movl	-32(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB4_9:                                # =>This Inner Loop Header: Depth=1
	movl	$1048586, %edi          # imm = 0x10000A
	callq	enqueue_signature
	movl	-28(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB4_12
# BB#10:                                #   in Loop: Header=BB4_9 Depth=1
	movl	$1048587, %edi          # imm = 0x10000B
	callq	enqueue_signature
	movq	-48(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	subl	-36(%rbp), %eax
	imull	$255, %eax, %eax
	cltd
	idivl	-32(%rbp)
	movq	-64(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	movb	%al, (%rcx,%rdx)
# BB#11:                                #   in Loop: Header=BB4_9 Depth=1
	movl	$1048588, %edi          # imm = 0x10000C
	callq	enqueue_signature
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB4_9
.LBB4_12:
	movl	$1048589, %edi          # imm = 0x10000D
	callq	enqueue_signature_with_return
	movl	-68(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	int_to_uchar, .Lfunc_end4-int_to_uchar
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function setup_brightness_lut
.LCPI5_0:
	.quad	4636737291354636288     # double 100
	.text
	.globl	setup_brightness_lut
	.p2align	4, 0x90
	.type	setup_brightness_lut,@function
setup_brightness_lut:                   # @setup_brightness_lut
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi27:
	.cfi_def_cfa_offset 16
.Lcfi28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi29:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
.Lcfi30:
	.cfi_offset %rbx, -40
.Lcfi31:
	.cfi_offset %r14, -32
.Lcfi32:
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	$1114113, %edi          # imm = 0x110001
	callq	enqueue_signature
	movq	%rbx, -40(%rbp)
	movl	%r15d, -48(%rbp)
	movl	%r14d, -44(%rbp)
	movl	$516, %edi              # imm = 0x204
	callq	malloc
	movq	%rax, %rbx
# BB#1:
	movl	$1114114, %edi          # imm = 0x110002
	callq	enqueue_signature
	movq	-40(%rbp), %rax
	movq	%rbx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$258, %rax              # imm = 0x102
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$-256, -32(%rbp)
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	movl	$1114115, %edi          # imm = 0x110003
	callq	enqueue_signature
	cmpl	$257, -32(%rbp)         # imm = 0x101
	jge	.LBB5_8
# BB#3:                                 #   in Loop: Header=BB5_2 Depth=1
	movl	$1114116, %edi          # imm = 0x110004
	callq	enqueue_signature
	cvtsi2ssl	-32(%rbp), %xmm0
	cvtsi2ssl	-48(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-28(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	cmpl	$6, -44(%rbp)
	jne	.LBB5_5
# BB#4:                                 #   in Loop: Header=BB5_2 Depth=1
	movl	$1114117, %edi          # imm = 0x110005
	callq	enqueue_signature
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-28(%rbp), %xmm0
	mulss	-28(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
.LBB5_5:                                #   in Loop: Header=BB5_2 Depth=1
	movl	$1114118, %edi          # imm = 0x110006
	callq	enqueue_signature
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	exp
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
# BB#6:                                 #   in Loop: Header=BB5_2 Depth=1
	movl	$1114119, %edi          # imm = 0x110007
	callq	enqueue_signature
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	cvttss2si	-28(%rbp), %eax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-32(%rbp), %rdx
	movb	%al, (%rcx,%rdx)
# BB#7:                                 #   in Loop: Header=BB5_2 Depth=1
	movl	$1114120, %edi          # imm = 0x110008
	callq	enqueue_signature
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB5_2
.LBB5_8:
	movl	$1114121, %edi          # imm = 0x110009
	callq	enqueue_signature_with_return
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	setup_brightness_lut, .Lfunc_end5-setup_brightness_lut
	.cfi_endproc
                                        # -- End function
	.globl	susan_principle         # -- Begin function susan_principle
	.p2align	4, 0x90
	.type	susan_principle,@function
susan_principle:                        # @susan_principle
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi33:
	.cfi_def_cfa_offset 16
.Lcfi34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi35:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
.Lcfi36:
	.cfi_offset %rbx, -56
.Lcfi37:
	.cfi_offset %r12, -48
.Lcfi38:
	.cfi_offset %r13, -40
.Lcfi39:
	.cfi_offset %r14, -32
.Lcfi40:
	.cfi_offset %r15, -24
	movl	%r9d, -88(%rbp)         # 4-byte Spill
	movl	%r8d, %r15d
	movl	%ecx, %r12d
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$1245185, %edi          # imm = 0x130001
	callq	enqueue_signature
	movq	%r14, -104(%rbp)
	movq	%rbx, -96(%rbp)
	movq	%r13, -112(%rbp)
	movl	%r12d, -84(%rbp)
	movl	%r15d, -68(%rbp)
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -80(%rbp)
	movq	-96(%rbp), %rdi
	movl	-68(%rbp), %eax
	imull	-80(%rbp), %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset
# BB#1:
	movl	$1245186, %edi          # imm = 0x130002
	callq	enqueue_signature
	movl	$3, -76(%rbp)
.LBB6_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
	movl	$1245187, %edi          # imm = 0x130003
	callq	enqueue_signature
	movl	-76(%rbp), %eax
	movl	-80(%rbp), %ecx
	subl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_11
# BB#3:                                 #   in Loop: Header=BB6_2 Depth=1
	movl	$1245188, %edi          # imm = 0x130004
	callq	enqueue_signature
	movl	$3, -72(%rbp)
.LBB6_4:                                #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1245189, %edi          # imm = 0x130005
	callq	enqueue_signature
	movl	-72(%rbp), %eax
	movl	-68(%rbp), %ecx
	subl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_9
# BB#5:                                 #   in Loop: Header=BB6_4 Depth=2
	movl	$1245190, %edi          # imm = 0x130006
	callq	enqueue_signature
	xorl	%eax, %eax
	movl	$100, -44(%rbp)
	movq	-104(%rbp), %rcx
	movl	-76(%rbp), %edx
	subl	$3, %edx
	imull	-68(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movslq	-72(%rbp), %rcx
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, -56(%rbp)
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-76(%rbp), %esi
	imull	-68(%rbp), %esi
	addl	-72(%rbp), %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movq	%rdx, -64(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movl	-68(%rbp), %ecx
	subl	$3, %ecx
	movq	-56(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movl	-68(%rbp), %ecx
	subl	$5, %ecx
	movq	-56(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movl	-68(%rbp), %ecx
	subl	$6, %ecx
	movq	-56(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-56(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -56(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movl	-68(%rbp), %ecx
	subl	$6, %ecx
	movq	-56(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movl	-68(%rbp), %ecx
	subl	$5, %ecx
	movq	-56(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movl	-68(%rbp), %ecx
	subl	$3, %ecx
	movq	-56(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jg	.LBB6_7
# BB#6:                                 #   in Loop: Header=BB6_4 Depth=2
	movl	$1245191, %edi          # imm = 0x130007
	callq	enqueue_signature
	movl	-84(%rbp), %eax
	subl	-44(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-76(%rbp), %edx
	imull	-68(%rbp), %edx
	addl	-72(%rbp), %edx
	movslq	%edx, %rdx
	movl	%eax, (%rcx,%rdx,4)
.LBB6_7:                                #   in Loop: Header=BB6_4 Depth=2
	movl	$1245192, %edi          # imm = 0x130008
	callq	enqueue_signature
# BB#8:                                 #   in Loop: Header=BB6_4 Depth=2
	movl	$1245193, %edi          # imm = 0x130009
	callq	enqueue_signature
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB6_4
.LBB6_9:                                #   in Loop: Header=BB6_2 Depth=1
	movl	$1245194, %edi          # imm = 0x13000A
	callq	enqueue_signature
# BB#10:                                #   in Loop: Header=BB6_2 Depth=1
	movl	$1245195, %edi          # imm = 0x13000B
	callq	enqueue_signature
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB6_2
.LBB6_11:
	movl	$1245196, %edi          # imm = 0x13000C
	callq	enqueue_signature_with_return
	movl	-116(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	susan_principle, .Lfunc_end6-susan_principle
	.cfi_endproc
                                        # -- End function
	.globl	susan_principle_small   # -- Begin function susan_principle_small
	.p2align	4, 0x90
	.type	susan_principle_small,@function
susan_principle_small:                  # @susan_principle_small
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi41:
	.cfi_def_cfa_offset 16
.Lcfi42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi43:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
.Lcfi44:
	.cfi_offset %rbx, -56
.Lcfi45:
	.cfi_offset %r12, -48
.Lcfi46:
	.cfi_offset %r13, -40
.Lcfi47:
	.cfi_offset %r14, -32
.Lcfi48:
	.cfi_offset %r15, -24
	movl	%r9d, -92(%rbp)         # 4-byte Spill
	movl	%r8d, %r15d
	movl	%ecx, %r12d
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$1376257, %edi          # imm = 0x150001
	callq	enqueue_signature
	movq	%r14, -112(%rbp)
	movq	%rbx, -104(%rbp)
	movq	%r13, -120(%rbp)
	movl	%r12d, -84(%rbp)
	movl	%r15d, -60(%rbp)
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -88(%rbp)
	movq	-104(%rbp), %rdi
	movl	-60(%rbp), %eax
	imull	-88(%rbp), %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset
# BB#1:
	movl	$1376258, %edi          # imm = 0x150002
	callq	enqueue_signature
	movl	$730, -84(%rbp)         # imm = 0x2DA
	movl	$1, -68(%rbp)
.LBB7_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	movl	$1376259, %edi          # imm = 0x150003
	callq	enqueue_signature
	movl	-68(%rbp), %eax
	movl	-88(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_11
# BB#3:                                 #   in Loop: Header=BB7_2 Depth=1
	movl	$1376260, %edi          # imm = 0x150004
	callq	enqueue_signature
	movl	$1, -64(%rbp)
.LBB7_4:                                #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1376261, %edi          # imm = 0x150005
	callq	enqueue_signature
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_9
# BB#5:                                 #   in Loop: Header=BB7_4 Depth=2
	movl	$1376262, %edi          # imm = 0x150006
	callq	enqueue_signature
	xorl	%eax, %eax
	movl	$100, -44(%rbp)
	movq	-112(%rbp), %rcx
	movl	-68(%rbp), %edx
	subl	$1, %edx
	imull	-60(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movslq	-64(%rbp), %rcx
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, -56(%rbp)
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movl	-68(%rbp), %esi
	imull	-60(%rbp), %esi
	addl	-64(%rbp), %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movl	-60(%rbp), %ecx
	subl	$2, %ecx
	movq	-56(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-56(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -56(%rbp)
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movl	-60(%rbp), %ecx
	subl	$2, %ecx
	movq	-56(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jg	.LBB7_7
# BB#6:                                 #   in Loop: Header=BB7_4 Depth=2
	movl	$1376263, %edi          # imm = 0x150007
	callq	enqueue_signature
	movl	-84(%rbp), %eax
	subl	-44(%rbp), %eax
	movq	-104(%rbp), %rcx
	movl	-68(%rbp), %edx
	imull	-60(%rbp), %edx
	addl	-64(%rbp), %edx
	movslq	%edx, %rdx
	movl	%eax, (%rcx,%rdx,4)
.LBB7_7:                                #   in Loop: Header=BB7_4 Depth=2
	movl	$1376264, %edi          # imm = 0x150008
	callq	enqueue_signature
# BB#8:                                 #   in Loop: Header=BB7_4 Depth=2
	movl	$1376265, %edi          # imm = 0x150009
	callq	enqueue_signature
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB7_4
.LBB7_9:                                #   in Loop: Header=BB7_2 Depth=1
	movl	$1376266, %edi          # imm = 0x15000A
	callq	enqueue_signature
# BB#10:                                #   in Loop: Header=BB7_2 Depth=1
	movl	$1376267, %edi          # imm = 0x15000B
	callq	enqueue_signature
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB7_2
.LBB7_11:
	movl	$1376268, %edi          # imm = 0x15000C
	callq	enqueue_signature_with_return
	movl	-124(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	susan_principle_small, .Lfunc_end7-susan_principle_small
	.cfi_endproc
                                        # -- End function
	.globl	median                  # -- Begin function median
	.p2align	4, 0x90
	.type	median,@function
median:                                 # @median
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi49:
	.cfi_def_cfa_offset 16
.Lcfi50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi51:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
.Lcfi52:
	.cfi_offset %rbx, -48
.Lcfi53:
	.cfi_offset %r12, -40
.Lcfi54:
	.cfi_offset %r14, -32
.Lcfi55:
	.cfi_offset %r15, -24
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movl	$1441793, %edi          # imm = 0x160001
	callq	enqueue_signature
	movq	%rbx, -64(%rbp)
	movl	%r12d, -48(%rbp)
	movl	%r15d, -44(%rbp)
	movl	%r14d, -40(%rbp)
	movq	-64(%rbp), %rax
	movl	-48(%rbp), %ecx
	subl	$1, %ecx
	imull	-40(%rbp), %ecx
	addl	-44(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -96(%rbp)
	movq	-64(%rbp), %rax
	movl	-48(%rbp), %ecx
	subl	$1, %ecx
	imull	-40(%rbp), %ecx
	addl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -92(%rbp)
	movq	-64(%rbp), %rax
	movl	-48(%rbp), %ecx
	subl	$1, %ecx
	imull	-40(%rbp), %ecx
	addl	-44(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -88(%rbp)
	movq	-64(%rbp), %rax
	movl	-48(%rbp), %ecx
	imull	-40(%rbp), %ecx
	addl	-44(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -84(%rbp)
	movq	-64(%rbp), %rax
	movl	-48(%rbp), %ecx
	imull	-40(%rbp), %ecx
	addl	-44(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -80(%rbp)
	movq	-64(%rbp), %rax
	movl	-48(%rbp), %ecx
	addl	$1, %ecx
	imull	-40(%rbp), %ecx
	addl	-44(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -76(%rbp)
	movq	-64(%rbp), %rax
	movl	-48(%rbp), %ecx
	addl	$1, %ecx
	imull	-40(%rbp), %ecx
	addl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -72(%rbp)
	movq	-64(%rbp), %rax
	movl	-48(%rbp), %ecx
	addl	$1, %ecx
	imull	-40(%rbp), %ecx
	addl	-44(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -68(%rbp)
	movl	$0, -52(%rbp)
.LBB8_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	movl	$1441794, %edi          # imm = 0x160002
	callq	enqueue_signature
	cmpl	$7, -52(%rbp)
	jge	.LBB8_10
# BB#2:                                 #   in Loop: Header=BB8_1 Depth=1
	movl	$1441795, %edi          # imm = 0x160003
	callq	enqueue_signature
	movl	$0, -36(%rbp)
.LBB8_3:                                #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1441796, %edi          # imm = 0x160004
	callq	enqueue_signature
	movl	$7, %eax
	movl	-36(%rbp), %ecx
	subl	-52(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB8_8
# BB#4:                                 #   in Loop: Header=BB8_3 Depth=2
	movl	$1441797, %edi          # imm = 0x160005
	callq	enqueue_signature
	movslq	-36(%rbp), %rax
	movl	-96(%rbp,%rax,4), %eax
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	cmpl	-96(%rbp,%rcx,4), %eax
	jle	.LBB8_6
# BB#5:                                 #   in Loop: Header=BB8_3 Depth=2
	movl	$1441798, %edi          # imm = 0x160006
	callq	enqueue_signature
	movslq	-36(%rbp), %rax
	movl	-96(%rbp,%rax,4), %eax
	movl	%eax, -100(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	movslq	-36(%rbp), %rcx
	movl	%eax, -96(%rbp,%rcx,4)
	movl	-100(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	%eax, -96(%rbp,%rcx,4)
.LBB8_6:                                #   in Loop: Header=BB8_3 Depth=2
	movl	$1441799, %edi          # imm = 0x160007
	callq	enqueue_signature
# BB#7:                                 #   in Loop: Header=BB8_3 Depth=2
	movl	$1441800, %edi          # imm = 0x160008
	callq	enqueue_signature
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_3
.LBB8_8:                                #   in Loop: Header=BB8_1 Depth=1
	movl	$1441801, %edi          # imm = 0x160009
	callq	enqueue_signature
# BB#9:                                 #   in Loop: Header=BB8_1 Depth=1
	movl	$1441802, %edi          # imm = 0x16000A
	callq	enqueue_signature
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB8_1
.LBB8_10:
	movl	$1441803, %edi          # imm = 0x16000B
	callq	enqueue_signature_with_return
	movl	$2, %ecx
	movl	-84(%rbp), %eax
	addl	-80(%rbp), %eax
	cltd
	idivl	%ecx
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	median, .Lfunc_end8-median
	.cfi_endproc
                                        # -- End function
	.globl	enlarge                 # -- Begin function enlarge
	.p2align	4, 0x90
	.type	enlarge,@function
enlarge:                                # @enlarge
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi56:
	.cfi_def_cfa_offset 16
.Lcfi57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi58:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
.Lcfi59:
	.cfi_offset %rbx, -56
.Lcfi60:
	.cfi_offset %r12, -48
.Lcfi61:
	.cfi_offset %r13, -40
.Lcfi62:
	.cfi_offset %r14, -32
.Lcfi63:
	.cfi_offset %r15, -24
	movl	%r8d, %r14d
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movl	$1507329, %edi          # imm = 0x170001
	callq	enqueue_signature
	movq	%rbx, -88(%rbp)
	movq	%r13, -72(%rbp)
	movq	%r12, -56(%rbp)
	movq	%r15, -80(%rbp)
	movl	%r14d, -44(%rbp)
	movl	$0, -48(%rbp)
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	movl	$1507330, %edi          # imm = 0x170002
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB9_4
# BB#2:                                 #   in Loop: Header=BB9_1 Depth=1
	movl	$1507331, %edi          # imm = 0x170003
	callq	enqueue_signature
	movq	-72(%rbp), %rax
	movl	-48(%rbp), %ecx
	addl	-44(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edx
	movl	-44(%rbp), %esi
	shll	$1, %esi
	addl	%edx, %esi
	imull	%ecx, %esi
	movslq	%esi, %rcx
	addq	%rax, %rcx
	movslq	-44(%rbp), %rdi
	addq	%rcx, %rdi
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %ecx
	movq	-56(%rbp), %rdx
	imull	(%rdx), %ecx
	movslq	%ecx, %rsi
	addq	%rax, %rsi
	movq	-56(%rbp), %rax
	movslq	(%rax), %rdx
	callq	memcpy
# BB#3:                                 #   in Loop: Header=BB9_1 Depth=1
	movl	$1507332, %edi          # imm = 0x170004
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB9_1
.LBB9_4:
	movl	$1507333, %edi          # imm = 0x170005
	callq	enqueue_signature
	movl	$0, -48(%rbp)
.LBB9_5:                                # =>This Inner Loop Header: Depth=1
	movl	$1507334, %edi          # imm = 0x170006
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB9_9
# BB#6:                                 #   in Loop: Header=BB9_5 Depth=1
	movl	$1507335, %edi          # imm = 0x170007
	callq	enqueue_signature
	movq	-72(%rbp), %rax
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	subl	-48(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edx
	movl	-44(%rbp), %esi
	shll	$1, %esi
	addl	%edx, %esi
	imull	%ecx, %esi
	movslq	%esi, %rcx
	addq	%rax, %rcx
	movslq	-44(%rbp), %rdi
	addq	%rcx, %rdi
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %ecx
	movq	-56(%rbp), %rdx
	imull	(%rdx), %ecx
	movslq	%ecx, %rsi
	addq	%rax, %rsi
	movq	-56(%rbp), %rax
	movslq	(%rax), %rdx
	callq	memcpy
# BB#7:                                 #   in Loop: Header=BB9_5 Depth=1
	movl	$1507336, %edi          # imm = 0x170008
	callq	enqueue_signature
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	(%rcx), %ecx
	addl	-44(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edx
	movl	-44(%rbp), %esi
	shll	$1, %esi
	addl	%edx, %esi
	imull	%ecx, %esi
	movslq	%esi, %rcx
	addq	%rax, %rcx
	movslq	-44(%rbp), %rdi
	addq	%rcx, %rdi
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	-48(%rbp), %ecx
	subl	$1, %ecx
	movq	-56(%rbp), %rdx
	imull	(%rdx), %ecx
	movslq	%ecx, %rsi
	addq	%rax, %rsi
	movq	-56(%rbp), %rax
	movslq	(%rax), %rdx
	callq	memcpy
# BB#8:                                 #   in Loop: Header=BB9_5 Depth=1
	movl	$1507337, %edi          # imm = 0x170009
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB9_5
.LBB9_9:
	movl	$1507338, %edi          # imm = 0x17000A
	callq	enqueue_signature
	movl	$0, -48(%rbp)
.LBB9_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_12 Depth 2
	movl	$1507339, %edi          # imm = 0x17000B
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB9_17
# BB#11:                                #   in Loop: Header=BB9_10 Depth=1
	movl	$1507340, %edi          # imm = 0x17000C
	callq	enqueue_signature
	movl	$0, -60(%rbp)
.LBB9_12:                               #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1507341, %edi          # imm = 0x17000D
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	-44(%rbp), %edx
	shll	$1, %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jge	.LBB9_15
# BB#13:                                #   in Loop: Header=BB9_12 Depth=2
	movl	$1507342, %edi          # imm = 0x17000E
	callq	enqueue_signature
	movq	-72(%rbp), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edx
	movl	-44(%rbp), %esi
	shll	$1, %esi
	addl	%edx, %esi
	imull	%ecx, %esi
	addl	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	movslq	%esi, %rcx
	movb	(%rax,%rcx), %al
	movq	-72(%rbp), %rcx
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rsi
	movl	(%rsi), %esi
	movl	-44(%rbp), %edi
	shll	$1, %edi
	addl	%esi, %edi
	imull	%edx, %edi
	addl	-44(%rbp), %edi
	subl	$1, %edi
	subl	-48(%rbp), %edi
	movslq	%edi, %rdx
	movb	%al, (%rcx,%rdx)
	movq	-72(%rbp), %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edx
	movl	-44(%rbp), %esi
	shll	$1, %esi
	addl	%edx, %esi
	imull	%ecx, %esi
	movq	-56(%rbp), %rcx
	addl	(%rcx), %esi
	addl	-44(%rbp), %esi
	subl	$1, %esi
	subl	-48(%rbp), %esi
	movslq	%esi, %rcx
	movb	(%rax,%rcx), %al
	movq	-72(%rbp), %rcx
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rsi
	movl	(%rsi), %esi
	movl	-44(%rbp), %edi
	shll	$1, %edi
	addl	%esi, %edi
	imull	%edx, %edi
	movq	-56(%rbp), %rdx
	addl	(%rdx), %edi
	addl	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	movslq	%edi, %rdx
	movb	%al, (%rcx,%rdx)
# BB#14:                                #   in Loop: Header=BB9_12 Depth=2
	movl	$1507343, %edi          # imm = 0x17000F
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB9_12
.LBB9_15:                               #   in Loop: Header=BB9_10 Depth=1
	movl	$1507344, %edi          # imm = 0x170010
	callq	enqueue_signature
# BB#16:                                #   in Loop: Header=BB9_10 Depth=1
	movl	$1507345, %edi          # imm = 0x170011
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB9_10
.LBB9_17:
	movl	$1507346, %edi          # imm = 0x170012
	callq	enqueue_signature_with_return
	movl	-44(%rbp), %eax
	shll	$1, %eax
	movq	-56(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movl	-44(%rbp), %eax
	shll	$1, %eax
	movq	-80(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-92(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	enlarge, .Lfunc_end9-enlarge
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function susan_smoothing
.LCPI10_0:
	.quad	4609434218613702656     # double 1.5
.LCPI10_2:
	.quad	4636737291354636288     # double 100
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI10_1:
	.long	1097859072              # float 15
	.text
	.globl	susan_smoothing
	.p2align	4, 0x90
	.type	susan_smoothing,@function
susan_smoothing:                        # @susan_smoothing
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi64:
	.cfi_def_cfa_offset 16
.Lcfi65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi66:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
.Lcfi67:
	.cfi_offset %rbx, -56
.Lcfi68:
	.cfi_offset %r12, -48
.Lcfi69:
	.cfi_offset %r13, -40
.Lcfi70:
	.cfi_offset %r14, -32
.Lcfi71:
	.cfi_offset %r15, -24
	movq	%r8, %r14
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movq	%rsi, %r13
	movl	%edi, %ebx
	movl	$1638401, %edi          # imm = 0x190001
	callq	enqueue_signature
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movl	%ebx, -148(%rbp)
	movq	%r13, -128(%rbp)
	movss	%xmm0, -108(%rbp)
	movl	%r12d, -72(%rbp)
	movl	%r15d, -84(%rbp)
	movq	%r14, -184(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -120(%rbp)
	cmpl	$0, -148(%rbp)
	jne	.LBB10_2
# BB#1:
	movl	$1638402, %edi          # imm = 0x190002
	callq	enqueue_signature
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	-108(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB10_3
.LBB10_2:
	movl	$1638403, %edi          # imm = 0x190003
	callq	enqueue_signature
	movl	$1, -60(%rbp)
.LBB10_3:
	movl	$1638404, %edi          # imm = 0x190004
	callq	enqueue_signature
	movss	.LCPI10_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movl	$0, -52(%rbp)
	movss	-108(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB10_10
# BB#4:
	movl	$1638405, %edi          # imm = 0x190005
	callq	enqueue_signature
	cmpl	$0, -52(%rbp)
	jne	.LBB10_10
# BB#5:
	movl	$1638406, %edi          # imm = 0x190006
	callq	enqueue_signature
	movabsq	$.L.str.25, %rdi
	cvtss2sd	-108(%rbp), %xmm0
	movb	$1, %al
	callq	printf
# BB#6:
	movl	$1638407, %edi          # imm = 0x190007
	callq	enqueue_signature
	movabsq	$.L.str.26, %rdi
	movb	$0, %al
	callq	printf
# BB#7:
	movl	$1638408, %edi          # imm = 0x190008
	callq	enqueue_signature
	movabsq	$.L.str.27, %rdi
	movb	$0, %al
	callq	printf
# BB#8:
	movl	$1638409, %edi          # imm = 0x190009
	callq	enqueue_signature
	xorl	%edi, %edi
	callq	exit
# BB#9:
	movl	$1638410, %edi          # imm = 0x19000A
	callq	enqueue_signature_with_return
.LBB10_10:
	movl	$1638411, %edi          # imm = 0x19000B
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	cmpl	-72(%rbp), %eax
	jg	.LBB10_12
# BB#11:
	movl	$1638412, %edi          # imm = 0x19000C
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	cmpl	-84(%rbp), %eax
	jle	.LBB10_15
.LBB10_12:
	movl	$1638413, %edi          # imm = 0x19000D
	callq	enqueue_signature
	movabsq	$.L.str.28, %rdi
	movl	-60(%rbp), %esi
	movl	-72(%rbp), %edx
	movl	-84(%rbp), %ecx
	movb	$0, %al
	callq	printf
# BB#13:
	movl	$1638414, %edi          # imm = 0x19000E
	callq	enqueue_signature
	xorl	%edi, %edi
	callq	exit
# BB#14:
	movl	$1638415, %edi          # imm = 0x19000F
	callq	enqueue_signature_with_return
.LBB10_15:
	movl	$1638416, %edi          # imm = 0x190010
	callq	enqueue_signature
	movl	-72(%rbp), %eax
	movl	-60(%rbp), %ecx
	shll	$1, %ecx
	addl	%eax, %ecx
	movl	-84(%rbp), %eax
	movl	-60(%rbp), %edx
	shll	$1, %edx
	addl	%eax, %edx
	imull	%ecx, %edx
	movslq	%edx, %rdi
	callq	malloc
	movq	%rax, %rbx
# BB#16:
	movl	$1638417, %edi          # imm = 0x190011
	callq	enqueue_signature_with_call
	leaq	-128(%rbp), %rdi
	leaq	-72(%rbp), %rdx
	leaq	-84(%rbp), %rcx
	movq	%rbx, -192(%rbp)
	movq	-192(%rbp), %rsi
	movl	-60(%rbp), %r8d
	callq	enlarge
# BB#17:
	movl	$1638418, %edi          # imm = 0x190012
	callq	enqueue_signature
	cmpl	$0, -148(%rbp)
	jne	.LBB10_49
# BB#18:
	movl	$1638419, %edi          # imm = 0x190013
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	movl	-72(%rbp), %eax
	subl	-136(%rbp), %eax
	movl	%eax, -164(%rbp)
	movl	-136(%rbp), %eax
	imull	-136(%rbp), %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, %rbx
# BB#19:
	movl	$1638420, %edi          # imm = 0x190014
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	%rbx, -176(%rbp)
	movq	-176(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	movss	-108(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	-108(%rbp), %xmm0
	movd	%xmm0, %ecx
	xorl	$2147483648, %ecx       # imm = 0x80000000
	movd	%ecx, %xmm0
	movss	%xmm0, -168(%rbp)
	subl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB10_20:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_22 Depth 2
	movl	$1638421, %edi          # imm = 0x190015
	callq	enqueue_signature
	movl	-68(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB10_28
# BB#21:                                #   in Loop: Header=BB10_20 Depth=1
	movl	$1638422, %edi          # imm = 0x190016
	callq	enqueue_signature
	xorl	%eax, %eax
	subl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB10_22:                              #   Parent Loop BB10_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1638423, %edi          # imm = 0x190017
	callq	enqueue_signature
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB10_26
# BB#23:                                #   in Loop: Header=BB10_22 Depth=2
	movl	$1638424, %edi          # imm = 0x190018
	callq	enqueue_signature
	movl	-68(%rbp), %eax
	imull	-68(%rbp), %eax
	movl	-64(%rbp), %ecx
	imull	-64(%rbp), %ecx
	addl	%eax, %ecx
	cvtsi2ssl	%ecx, %xmm0
	divss	-168(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	exp
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
# BB#24:                                #   in Loop: Header=BB10_22 Depth=2
	movl	$1638425, %edi          # imm = 0x190019
	callq	enqueue_signature
	movsd	.LCPI10_2(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	-160(%rbp), %xmm0       # 8-byte Folded Reload
	cvttsd2si	%xmm0, %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movq	-144(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -144(%rbp)
	movb	%al, (%rcx)
# BB#25:                                #   in Loop: Header=BB10_22 Depth=2
	movl	$1638426, %edi          # imm = 0x19001A
	callq	enqueue_signature
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB10_22
.LBB10_26:                              #   in Loop: Header=BB10_20 Depth=1
	movl	$1638427, %edi          # imm = 0x19001B
	callq	enqueue_signature
# BB#27:                                #   in Loop: Header=BB10_20 Depth=1
	movl	$1638428, %edi          # imm = 0x19001C
	callq	enqueue_signature
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB10_20
.LBB10_28:
	movl	$1638429, %edi          # imm = 0x19001D
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB10_29:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_31 Depth 2
                                        #       Child Loop BB10_33 Depth 3
                                        #         Child Loop BB10_35 Depth 4
	movl	$1638430, %edi          # imm = 0x19001E
	callq	enqueue_signature
	movl	-68(%rbp), %eax
	movl	-84(%rbp), %ecx
	subl	-60(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_48
# BB#30:                                #   in Loop: Header=BB10_29 Depth=1
	movl	$1638431, %edi          # imm = 0x19001F
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB10_31:                              #   Parent Loop BB10_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_33 Depth 3
                                        #         Child Loop BB10_35 Depth 4
	movl	$1638432, %edi          # imm = 0x190020
	callq	enqueue_signature
	movl	-64(%rbp), %eax
	movl	-72(%rbp), %ecx
	subl	-60(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_46
# BB#32:                                #   in Loop: Header=BB10_31 Depth=2
	movl	$1638433, %edi          # imm = 0x190021
	callq	enqueue_signature
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	$0, -56(%rbp)
	movl	$0, -52(%rbp)
	movq	-176(%rbp), %rdx
	movq	%rdx, -144(%rbp)
	movq	-128(%rbp), %rdx
	movl	-68(%rbp), %esi
	subl	-60(%rbp), %esi
	imull	-72(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rdx, %rsi
	movslq	-64(%rbp), %rdx
	addq	%rsi, %rdx
	movslq	-60(%rbp), %rsi
	subq	%rsi, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
	movq	-128(%rbp), %rcx
	movl	-68(%rbp), %edx
	imull	-72(%rbp), %edx
	addl	-64(%rbp), %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	movl	%ecx, -100(%rbp)
	movq	-184(%rbp), %rcx
	movslq	-100(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, -96(%rbp)
	subl	-60(%rbp), %eax
	movl	%eax, -132(%rbp)
.LBB10_33:                              #   Parent Loop BB10_29 Depth=1
                                        #     Parent Loop BB10_31 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_35 Depth 4
	movl	$1638434, %edi          # imm = 0x190022
	callq	enqueue_signature
	movl	-132(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB10_40
# BB#34:                                #   in Loop: Header=BB10_33 Depth=3
	movl	$1638435, %edi          # imm = 0x190023
	callq	enqueue_signature
	xorl	%eax, %eax
	subl	-60(%rbp), %eax
	movl	%eax, -104(%rbp)
.LBB10_35:                              #   Parent Loop BB10_29 Depth=1
                                        #     Parent Loop BB10_31 Depth=2
                                        #       Parent Loop BB10_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	$1638436, %edi          # imm = 0x190024
	callq	enqueue_signature
	movl	-104(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB10_38
# BB#36:                                #   in Loop: Header=BB10_35 Depth=4
	movl	$1638437, %edi          # imm = 0x190025
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-80(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -80(%rbp)
	movzbl	(%rcx), %ecx
	movl	%ecx, -48(%rbp)
	movq	-144(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -144(%rbp)
	movzbl	(%rcx), %ecx
	movq	-96(%rbp), %rdx
	movslq	-48(%rbp), %rsi
	subq	%rsi, %rax
	movzbl	(%rdx,%rax), %eax
	imull	%ecx, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-44(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
# BB#37:                                #   in Loop: Header=BB10_35 Depth=4
	movl	$1638438, %edi          # imm = 0x190026
	callq	enqueue_signature
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB10_35
.LBB10_38:                              #   in Loop: Header=BB10_33 Depth=3
	movl	$1638439, %edi          # imm = 0x190027
	callq	enqueue_signature
	movl	-164(%rbp), %eax
	movq	-80(%rbp), %rcx
	cltq
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
# BB#39:                                #   in Loop: Header=BB10_33 Depth=3
	movl	$1638440, %edi          # imm = 0x190028
	callq	enqueue_signature
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB10_33
.LBB10_40:                              #   in Loop: Header=BB10_31 Depth=2
	movl	$1638441, %edi          # imm = 0x190029
	callq	enqueue_signature
	movl	-56(%rbp), %eax
	subl	$10000, %eax            # imm = 0x2710
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB10_43
# BB#41:                                #   in Loop: Header=BB10_31 Depth=2
	movl	$1638442, %edi          # imm = 0x19002A
	callq	enqueue_signature_with_call
	movq	-128(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	-72(%rbp), %ecx
	callq	median
	movb	%al, %bl
# BB#42:                                #   in Loop: Header=BB10_31 Depth=2
	movl	$1638443, %edi          # imm = 0x19002B
	callq	enqueue_signature
	movq	-120(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -120(%rbp)
	movb	%bl, (%rax)
	jmp	.LBB10_44
.LBB10_43:                              #   in Loop: Header=BB10_31 Depth=2
	movl	$1638444, %edi          # imm = 0x19002C
	callq	enqueue_signature
	movl	-52(%rbp), %eax
	imull	$10000, -100(%rbp), %ecx # imm = 0x2710
	subl	%ecx, %eax
	cltd
	idivl	-44(%rbp)
	movq	-120(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -120(%rbp)
	movb	%al, (%rcx)
.LBB10_44:                              #   in Loop: Header=BB10_31 Depth=2
	movl	$1638445, %edi          # imm = 0x19002D
	callq	enqueue_signature
# BB#45:                                #   in Loop: Header=BB10_31 Depth=2
	movl	$1638446, %edi          # imm = 0x19002E
	callq	enqueue_signature
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB10_31
.LBB10_46:                              #   in Loop: Header=BB10_29 Depth=1
	movl	$1638447, %edi          # imm = 0x19002F
	callq	enqueue_signature
# BB#47:                                #   in Loop: Header=BB10_29 Depth=1
	movl	$1638448, %edi          # imm = 0x190030
	callq	enqueue_signature
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB10_29
.LBB10_48:
	movl	$1638449, %edi          # imm = 0x190031
	callq	enqueue_signature
	jmp	.LBB10_62
.LBB10_49:
	movl	$1638450, %edi          # imm = 0x190032
	callq	enqueue_signature
	movl	$1, -68(%rbp)
.LBB10_50:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_52 Depth 2
	movl	$1638451, %edi          # imm = 0x190033
	callq	enqueue_signature
	movl	-68(%rbp), %eax
	movl	-84(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_61
# BB#51:                                #   in Loop: Header=BB10_50 Depth=1
	movl	$1638452, %edi          # imm = 0x190034
	callq	enqueue_signature
	movl	$1, -64(%rbp)
.LBB10_52:                              #   Parent Loop BB10_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1638453, %edi          # imm = 0x190035
	callq	enqueue_signature
	movl	-64(%rbp), %eax
	movl	-72(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_59
# BB#53:                                #   in Loop: Header=BB10_52 Depth=2
	movl	$1638454, %edi          # imm = 0x190036
	callq	enqueue_signature
	xorl	%eax, %eax
	movl	$0, -56(%rbp)
	movl	$0, -52(%rbp)
	movq	-128(%rbp), %rcx
	movl	-68(%rbp), %edx
	subl	$1, %edx
	imull	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movslq	-64(%rbp), %rcx
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, -80(%rbp)
	movq	-128(%rbp), %rcx
	movl	-68(%rbp), %edx
	imull	-72(%rbp), %edx
	addl	-64(%rbp), %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	movl	%ecx, -100(%rbp)
	movq	-184(%rbp), %rcx
	movslq	-100(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, -96(%rbp)
	movq	-80(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -80(%rbp)
	movzbl	(%rcx), %ecx
	movl	%ecx, -48(%rbp)
	movq	-96(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	imull	-48(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-80(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -80(%rbp)
	movzbl	(%rcx), %ecx
	movl	%ecx, -48(%rbp)
	movq	-96(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	imull	-48(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-80(%rbp), %rcx
	movzbl	(%rcx), %ecx
	movl	%ecx, -48(%rbp)
	movq	-96(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	imull	-48(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-72(%rbp), %ecx
	subl	$2, %ecx
	movq	-80(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -80(%rbp)
	movzbl	(%rcx), %ecx
	movl	%ecx, -48(%rbp)
	movq	-96(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	imull	-48(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-80(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -80(%rbp)
	movzbl	(%rcx), %ecx
	movl	%ecx, -48(%rbp)
	movq	-96(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	imull	-48(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-80(%rbp), %rcx
	movzbl	(%rcx), %ecx
	movl	%ecx, -48(%rbp)
	movq	-96(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	imull	-48(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-72(%rbp), %ecx
	subl	$2, %ecx
	movq	-80(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -80(%rbp)
	movzbl	(%rcx), %ecx
	movl	%ecx, -48(%rbp)
	movq	-96(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	imull	-48(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-80(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -80(%rbp)
	movzbl	(%rcx), %ecx
	movl	%ecx, -48(%rbp)
	movq	-96(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	imull	-48(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-80(%rbp), %rcx
	movzbl	(%rcx), %ecx
	movl	%ecx, -48(%rbp)
	movq	-96(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-44(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	$100, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB10_56
# BB#54:                                #   in Loop: Header=BB10_52 Depth=2
	movl	$1638455, %edi          # imm = 0x190037
	callq	enqueue_signature_with_call
	movq	-128(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	-72(%rbp), %ecx
	callq	median
	movb	%al, %bl
# BB#55:                                #   in Loop: Header=BB10_52 Depth=2
	movl	$1638456, %edi          # imm = 0x190038
	callq	enqueue_signature
	movq	-120(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -120(%rbp)
	movb	%bl, (%rax)
	jmp	.LBB10_57
.LBB10_56:                              #   in Loop: Header=BB10_52 Depth=2
	movl	$1638457, %edi          # imm = 0x190039
	callq	enqueue_signature
	movl	-52(%rbp), %eax
	imull	$100, -100(%rbp), %ecx
	subl	%ecx, %eax
	cltd
	idivl	-44(%rbp)
	movq	-120(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -120(%rbp)
	movb	%al, (%rcx)
.LBB10_57:                              #   in Loop: Header=BB10_52 Depth=2
	movl	$1638458, %edi          # imm = 0x19003A
	callq	enqueue_signature
# BB#58:                                #   in Loop: Header=BB10_52 Depth=2
	movl	$1638459, %edi          # imm = 0x19003B
	callq	enqueue_signature
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB10_52
.LBB10_59:                              #   in Loop: Header=BB10_50 Depth=1
	movl	$1638460, %edi          # imm = 0x19003C
	callq	enqueue_signature
# BB#60:                                #   in Loop: Header=BB10_50 Depth=1
	movl	$1638461, %edi          # imm = 0x19003D
	callq	enqueue_signature
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB10_50
.LBB10_61:
	movl	$1638462, %edi          # imm = 0x19003E
	callq	enqueue_signature
.LBB10_62:
	movl	$1638463, %edi          # imm = 0x19003F
	callq	enqueue_signature_with_return
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	susan_smoothing, .Lfunc_end10-susan_smoothing
	.cfi_endproc
                                        # -- End function
	.globl	edge_draw               # -- Begin function edge_draw
	.p2align	4, 0x90
	.type	edge_draw,@function
edge_draw:                              # @edge_draw
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi72:
	.cfi_def_cfa_offset 16
.Lcfi73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi74:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
.Lcfi75:
	.cfi_offset %rbx, -56
.Lcfi76:
	.cfi_offset %r12, -48
.Lcfi77:
	.cfi_offset %r13, -40
.Lcfi78:
	.cfi_offset %r14, -32
.Lcfi79:
	.cfi_offset %r15, -24
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movl	$1703937, %edi          # imm = 0x1A0001
	callq	enqueue_signature
	movq	%rbx, -96(%rbp)
	movq	%r13, -80(%rbp)
	movl	%r12d, -56(%rbp)
	movl	%r15d, -68(%rbp)
	movl	%r14d, -84(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.LBB11_8
# BB#1:
	movl	$1703938, %edi          # imm = 0x1A0002
	callq	enqueue_signature
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -52(%rbp)
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	movl	$1703939, %edi          # imm = 0x1A0003
	callq	enqueue_signature
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	imull	-68(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB11_7
# BB#3:                                 #   in Loop: Header=BB11_2 Depth=1
	movl	$1703940, %edi          # imm = 0x1A0004
	callq	enqueue_signature
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$8, %eax
	jge	.LBB11_5
# BB#4:                                 #   in Loop: Header=BB11_2 Depth=1
	movl	$1703941, %edi          # imm = 0x1A0005
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-96(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rsi
	subq	%rsi, %rdx
	addq	%rcx, %rdx
	movslq	-56(%rbp), %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movb	$-1, (%rax)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movb	$-1, (%rax)
	movq	-48(%rbp), %rax
	movb	$-1, (%rax)
	movl	-56(%rbp), %eax
	subl	$2, %eax
	movq	-48(%rbp), %rcx
	cltq
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movb	$-1, (%rax)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movb	$-1, (%rax)
	movl	-56(%rbp), %eax
	subl	$2, %eax
	movq	-48(%rbp), %rcx
	cltq
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movb	$-1, (%rax)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movb	$-1, (%rax)
	movq	-48(%rbp), %rax
	movb	$-1, (%rax)
.LBB11_5:                               #   in Loop: Header=BB11_2 Depth=1
	movl	$1703942, %edi          # imm = 0x1A0006
	callq	enqueue_signature
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
# BB#6:                                 #   in Loop: Header=BB11_2 Depth=1
	movl	$1703943, %edi          # imm = 0x1A0007
	callq	enqueue_signature
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB11_2
.LBB11_7:
	movl	$1703944, %edi          # imm = 0x1A0008
	callq	enqueue_signature
.LBB11_8:
	movl	$1703945, %edi          # imm = 0x1A0009
	callq	enqueue_signature
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -52(%rbp)
.LBB11_9:                               # =>This Inner Loop Header: Depth=1
	movl	$1703946, %edi          # imm = 0x1A000A
	callq	enqueue_signature
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	imull	-68(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB11_14
# BB#10:                                #   in Loop: Header=BB11_9 Depth=1
	movl	$1703947, %edi          # imm = 0x1A000B
	callq	enqueue_signature
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$8, %eax
	jge	.LBB11_12
# BB#11:                                #   in Loop: Header=BB11_9 Depth=1
	movl	$1703948, %edi          # imm = 0x1A000C
	callq	enqueue_signature
	movq	-96(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-80(%rbp), %rdx
	subq	%rdx, %rcx
	movb	$0, (%rax,%rcx)
.LBB11_12:                              #   in Loop: Header=BB11_9 Depth=1
	movl	$1703949, %edi          # imm = 0x1A000D
	callq	enqueue_signature
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
# BB#13:                                #   in Loop: Header=BB11_9 Depth=1
	movl	$1703950, %edi          # imm = 0x1A000E
	callq	enqueue_signature
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB11_9
.LBB11_14:
	movl	$1703951, %edi          # imm = 0x1A000F
	callq	enqueue_signature_with_return
	movl	-100(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	edge_draw, .Lfunc_end11-edge_draw
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function susan_thin
.LCPI12_0:
	.quad	4604480259023595110     # double 0.69999999999999996
	.text
	.globl	susan_thin
	.p2align	4, 0x90
	.type	susan_thin,@function
susan_thin:                             # @susan_thin
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi80:
	.cfi_def_cfa_offset 16
.Lcfi81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi82:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
.Lcfi83:
	.cfi_offset %rbx, -48
.Lcfi84:
	.cfi_offset %r12, -40
.Lcfi85:
	.cfi_offset %r14, -32
.Lcfi86:
	.cfi_offset %r15, -24
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$1769473, %edi          # imm = 0x1B0001
	callq	enqueue_signature
	movq	%rbx, -152(%rbp)
	movq	%r12, -56(%rbp)
	movl	%r15d, -44(%rbp)
	movl	%r14d, -204(%rbp)
	movl	$4, -40(%rbp)
.LBB12_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
                                        #       Child Loop BB12_33 Depth 3
                                        #         Child Loop BB12_35 Depth 4
	movl	$1769474, %edi          # imm = 0x1B0002
	callq	enqueue_signature
	movl	-40(%rbp), %eax
	movl	-204(%rbp), %ecx
	subl	$4, %ecx
	cmpl	%ecx, %eax
	jge	.LBB12_103
# BB#2:                                 #   in Loop: Header=BB12_1 Depth=1
	movl	$1769475, %edi          # imm = 0x1B0003
	callq	enqueue_signature
	movl	$4, -36(%rbp)
.LBB12_3:                               #   Parent Loop BB12_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_33 Depth 3
                                        #         Child Loop BB12_35 Depth 4
	movl	$1769476, %edi          # imm = 0x1B0004
	callq	enqueue_signature
	movl	-36(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	$4, %ecx
	cmpl	%ecx, %eax
	jge	.LBB12_101
# BB#4:                                 #   in Loop: Header=BB12_3 Depth=2
	movl	$1769477, %edi          # imm = 0x1B0005
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	jge	.LBB12_99
# BB#5:                                 #   in Loop: Header=BB12_3 Depth=2
	movl	$1769478, %edi          # imm = 0x1B0006
	callq	enqueue_signature
	movq	-152(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -200(%rbp)
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	imull	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rax, %rcx
	movslq	-36(%rbp), %rax
	addq	%rcx, %rax
	addq	$-1, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movq	-176(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	cmpl	$8, %ecx
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movq	-176(%rbp), %rax
	movzbl	2(%rax), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movq	-176(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	cmpl	$8, %ecx
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movq	-176(%rbp), %rax
	movslq	-44(%rbp), %rdx
	movzbl	2(%rax,%rdx), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movq	-176(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	-44(%rbp), %rcx
	movzbl	(%rdx,%rcx), %ecx
	cmpl	$8, %ecx
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movq	-176(%rbp), %rax
	movslq	-44(%rbp), %rdx
	addq	%rax, %rdx
	movslq	-44(%rbp), %rax
	movzbl	1(%rdx,%rax), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movq	-176(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	-44(%rbp), %rcx
	movzbl	2(%rdx,%rcx), %ecx
	cmpl	$8, %ecx
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movl	%ecx, -160(%rbp)
	cmpl	$0, -160(%rbp)
	jne	.LBB12_7
# BB#6:                                 #   in Loop: Header=BB12_3 Depth=2
	movl	$1769479, %edi          # imm = 0x1B0007
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	$100, (%rax,%rcx)
.LBB12_7:                               #   in Loop: Header=BB12_3 Depth=2
	movl	$1769480, %edi          # imm = 0x1B0008
	callq	enqueue_signature
	cmpl	$1, -160(%rbp)
	jne	.LBB12_54
# BB#8:                                 #   in Loop: Header=BB12_3 Depth=2
	movl	$1769481, %edi          # imm = 0x1B0009
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$6, %eax
	jge	.LBB12_54
# BB#9:                                 #   in Loop: Header=BB12_3 Depth=2
	movl	$1769482, %edi          # imm = 0x1B000A
	callq	enqueue_signature
	movq	-152(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -112(%rbp)
	movq	-152(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -108(%rbp)
	movq	-152(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -104(%rbp)
	movq	-152(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -100(%rbp)
	movl	$0, -96(%rbp)
	movq	-152(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -92(%rbp)
	movq	-152(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -88(%rbp)
	movq	-152(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -84(%rbp)
	movq	-152(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -80(%rbp)
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	jge	.LBB12_11
# BB#10:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769483, %edi          # imm = 0x1B000B
	callq	enqueue_signature
	movl	$0, -112(%rbp)
	movl	$0, -108(%rbp)
	movl	$0, -100(%rbp)
	movl	-104(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -104(%rbp)
	movl	-88(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -88(%rbp)
	imull	$3, -92(%rbp), %eax
	movl	%eax, -92(%rbp)
	imull	$3, -84(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-80(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB12_32
.LBB12_11:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769484, %edi          # imm = 0x1B000C
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	jge	.LBB12_13
# BB#12:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769485, %edi          # imm = 0x1B000D
	callq	enqueue_signature
	movl	$0, -108(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -104(%rbp)
	movl	-100(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -100(%rbp)
	movl	-92(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -92(%rbp)
	imull	$3, -88(%rbp), %eax
	movl	%eax, -88(%rbp)
	imull	$3, -80(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-84(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB12_31
.LBB12_13:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769486, %edi          # imm = 0x1B000E
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	jge	.LBB12_15
# BB#14:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769487, %edi          # imm = 0x1B000F
	callq	enqueue_signature
	movl	$0, -104(%rbp)
	movl	$0, -108(%rbp)
	movl	$0, -92(%rbp)
	movl	-112(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -112(%rbp)
	movl	-80(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -80(%rbp)
	imull	$3, -100(%rbp), %eax
	movl	%eax, -100(%rbp)
	imull	$3, -84(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-88(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB12_30
.LBB12_15:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769488, %edi          # imm = 0x1B0010
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	jge	.LBB12_17
# BB#16:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769489, %edi          # imm = 0x1B0011
	callq	enqueue_signature
	movl	$0, -100(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -88(%rbp)
	movl	-108(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -108(%rbp)
	movl	-84(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -84(%rbp)
	imull	$3, -104(%rbp), %eax
	movl	%eax, -104(%rbp)
	imull	$3, -80(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-92(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB12_29
.LBB12_17:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769490, %edi          # imm = 0x1B0012
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	jge	.LBB12_19
# BB#18:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769491, %edi          # imm = 0x1B0013
	callq	enqueue_signature
	movl	$0, -92(%rbp)
	movl	$0, -104(%rbp)
	movl	$0, -80(%rbp)
	movl	-108(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -108(%rbp)
	movl	-84(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -84(%rbp)
	imull	$3, -112(%rbp), %eax
	movl	%eax, -112(%rbp)
	imull	$3, -88(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	-100(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB12_28
.LBB12_19:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769492, %edi          # imm = 0x1B0014
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	jge	.LBB12_21
# BB#20:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769493, %edi          # imm = 0x1B0015
	callq	enqueue_signature
	movl	$0, -88(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -84(%rbp)
	movl	-112(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -112(%rbp)
	movl	-80(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -80(%rbp)
	imull	$3, -108(%rbp), %eax
	movl	%eax, -108(%rbp)
	imull	$3, -92(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-104(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB12_27
.LBB12_21:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769494, %edi          # imm = 0x1B0016
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	jge	.LBB12_23
# BB#22:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769495, %edi          # imm = 0x1B0017
	callq	enqueue_signature
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -80(%rbp)
	movl	-100(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -100(%rbp)
	movl	-92(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -92(%rbp)
	imull	$3, -112(%rbp), %eax
	movl	%eax, -112(%rbp)
	imull	$3, -104(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB12_26
.LBB12_23:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769496, %edi          # imm = 0x1B0018
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	jge	.LBB12_25
# BB#24:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769497, %edi          # imm = 0x1B0019
	callq	enqueue_signature
	movl	$0, -80(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -84(%rbp)
	movl	-88(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -104(%rbp)
	imull	$3, -108(%rbp), %eax
	movl	%eax, -108(%rbp)
	imull	$3, -100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-112(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -112(%rbp)
.LBB12_25:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769498, %edi          # imm = 0x1B001A
	callq	enqueue_signature
.LBB12_26:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769499, %edi          # imm = 0x1B001B
	callq	enqueue_signature
.LBB12_27:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769500, %edi          # imm = 0x1B001C
	callq	enqueue_signature
.LBB12_28:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769501, %edi          # imm = 0x1B001D
	callq	enqueue_signature
.LBB12_29:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769502, %edi          # imm = 0x1B001E
	callq	enqueue_signature
.LBB12_30:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769503, %edi          # imm = 0x1B001F
	callq	enqueue_signature
.LBB12_31:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769504, %edi          # imm = 0x1B0020
	callq	enqueue_signature
.LBB12_32:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769505, %edi          # imm = 0x1B0021
	callq	enqueue_signature
	movl	$0, -180(%rbp)
	movl	$0, -60(%rbp)
.LBB12_33:                              #   Parent Loop BB12_1 Depth=1
                                        #     Parent Loop BB12_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_35 Depth 4
	movl	$1769506, %edi          # imm = 0x1B0022
	callq	enqueue_signature
	cmpl	$3, -60(%rbp)
	jge	.LBB12_42
# BB#34:                                #   in Loop: Header=BB12_33 Depth=3
	movl	$1769507, %edi          # imm = 0x1B0023
	callq	enqueue_signature
	movl	$0, -64(%rbp)
.LBB12_35:                              #   Parent Loop BB12_1 Depth=1
                                        #     Parent Loop BB12_3 Depth=2
                                        #       Parent Loop BB12_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	$1769508, %edi          # imm = 0x1B0024
	callq	enqueue_signature
	cmpl	$3, -64(%rbp)
	jge	.LBB12_40
# BB#36:                                #   in Loop: Header=BB12_35 Depth=4
	movl	$1769509, %edi          # imm = 0x1B0025
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	addl	-60(%rbp), %eax
	addl	-60(%rbp), %eax
	addl	-64(%rbp), %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	cmpl	-180(%rbp), %eax
	jle	.LBB12_38
# BB#37:                                #   in Loop: Header=BB12_35 Depth=4
	movl	$1769510, %edi          # imm = 0x1B0026
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	addl	-60(%rbp), %eax
	addl	-60(%rbp), %eax
	addl	-64(%rbp), %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	movl	%eax, -180(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -156(%rbp)
.LBB12_38:                              #   in Loop: Header=BB12_35 Depth=4
	movl	$1769511, %edi          # imm = 0x1B0027
	callq	enqueue_signature
# BB#39:                                #   in Loop: Header=BB12_35 Depth=4
	movl	$1769512, %edi          # imm = 0x1B0028
	callq	enqueue_signature
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB12_35
.LBB12_40:                              #   in Loop: Header=BB12_33 Depth=3
	movl	$1769513, %edi          # imm = 0x1B0029
	callq	enqueue_signature
# BB#41:                                #   in Loop: Header=BB12_33 Depth=3
	movl	$1769514, %edi          # imm = 0x1B002A
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB12_33
.LBB12_42:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769515, %edi          # imm = 0x1B002B
	callq	enqueue_signature
	cmpl	$0, -180(%rbp)
	jle	.LBB12_53
# BB#43:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769516, %edi          # imm = 0x1B002C
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$4, %eax
	jge	.LBB12_45
# BB#44:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769517, %edi          # imm = 0x1B002D
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	-136(%rbp), %ecx
	subl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	addl	-156(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movb	$4, (%rax,%rcx)
	jmp	.LBB12_46
.LBB12_45:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769518, %edi          # imm = 0x1B002E
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	addl	$1, %eax
	movq	-56(%rbp), %rcx
	movl	-40(%rbp), %edx
	addl	-136(%rbp), %edx
	subl	$1, %edx
	imull	-44(%rbp), %edx
	addl	-36(%rbp), %edx
	addl	-156(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	movb	%al, (%rcx,%rdx)
.LBB12_46:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769519, %edi          # imm = 0x1B002F
	callq	enqueue_signature
	movl	-136(%rbp), %eax
	addl	-136(%rbp), %eax
	addl	-156(%rbp), %eax
	cmpl	$3, %eax
	jge	.LBB12_52
# BB#47:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769520, %edi          # imm = 0x1B0030
	callq	enqueue_signature
	movl	-136(%rbp), %eax
	subl	$1, %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-156(%rbp), %eax
	subl	$2, %eax
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	cmpl	$4, -40(%rbp)
	jge	.LBB12_49
# BB#48:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769521, %edi          # imm = 0x1B0031
	callq	enqueue_signature
	movl	$4, -40(%rbp)
.LBB12_49:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769522, %edi          # imm = 0x1B0032
	callq	enqueue_signature
	cmpl	$4, -36(%rbp)
	jge	.LBB12_51
# BB#50:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769523, %edi          # imm = 0x1B0033
	callq	enqueue_signature
	movl	$4, -36(%rbp)
.LBB12_51:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769524, %edi          # imm = 0x1B0034
	callq	enqueue_signature
.LBB12_52:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769525, %edi          # imm = 0x1B0035
	callq	enqueue_signature
.LBB12_53:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769526, %edi          # imm = 0x1B0036
	callq	enqueue_signature
.LBB12_54:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769527, %edi          # imm = 0x1B0037
	callq	enqueue_signature
	cmpl	$2, -160(%rbp)
	jne	.LBB12_88
# BB#55:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769528, %edi          # imm = 0x1B0038
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -140(%rbp)
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -132(%rbp)
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -168(%rbp)
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -164(%rbp)
	movl	-140(%rbp), %eax
	addl	-132(%rbp), %eax
	addl	-168(%rbp), %eax
	addl	-164(%rbp), %eax
	cmpl	$2, %eax
	jne	.LBB12_78
# BB#56:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769529, %edi          # imm = 0x1B0039
	callq	enqueue_signature
	movl	-140(%rbp), %eax
	orl	-164(%rbp), %eax
	movl	-132(%rbp), %ecx
	orl	-168(%rbp), %ecx
	andl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB12_78
# BB#57:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769530, %edi          # imm = 0x1B003A
	callq	enqueue_signature
	cmpl	$0, -140(%rbp)
	je	.LBB12_62
# BB#58:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769531, %edi          # imm = 0x1B003B
	callq	enqueue_signature
	cmpl	$0, -132(%rbp)
	je	.LBB12_60
# BB#59:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769532, %edi          # imm = 0x1B003C
	callq	enqueue_signature
	movl	$0, -64(%rbp)
	movl	$-1, -60(%rbp)
	jmp	.LBB12_61
.LBB12_60:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769533, %edi          # imm = 0x1B003D
	callq	enqueue_signature
	movl	$-1, -64(%rbp)
	movl	$0, -60(%rbp)
.LBB12_61:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769534, %edi          # imm = 0x1B003E
	callq	enqueue_signature
	jmp	.LBB12_66
.LBB12_62:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769535, %edi          # imm = 0x1B003F
	callq	enqueue_signature
	cmpl	$0, -132(%rbp)
	je	.LBB12_64
# BB#63:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769536, %edi          # imm = 0x1B0040
	callq	enqueue_signature
	movl	$1, -64(%rbp)
	movl	$0, -60(%rbp)
	jmp	.LBB12_65
.LBB12_64:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769537, %edi          # imm = 0x1B0041
	callq	enqueue_signature
	movl	$0, -64(%rbp)
	movl	$1, -60(%rbp)
.LBB12_65:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769538, %edi          # imm = 0x1B0042
	callq	enqueue_signature
.LBB12_66:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769539, %edi          # imm = 0x1B0043
	callq	enqueue_signature
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-152(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	-60(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	addl	-64(%rbp), %ecx
	movslq	%ecx, %rcx
	cvtsi2ssl	(%rax,%rcx,4), %xmm1
	cvtsi2ssl	-200(%rbp), %xmm2
	divss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_77
# BB#67:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769540, %edi          # imm = 0x1B0044
	callq	enqueue_signature
	cmpl	$0, -64(%rbp)
	jne	.LBB12_71
# BB#68:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769541, %edi          # imm = 0x1B0045
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	-60(%rbp), %edx
	shll	$1, %edx
	addl	%ecx, %edx
	imull	-44(%rbp), %edx
	addl	-36(%rbp), %edx
	movslq	%edx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$7, %eax
	jle	.LBB12_71
# BB#69:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769542, %edi          # imm = 0x1B0046
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	-60(%rbp), %edx
	shll	$1, %edx
	addl	%ecx, %edx
	imull	-44(%rbp), %edx
	addl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$7, %eax
	jle	.LBB12_71
# BB#70:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769543, %edi          # imm = 0x1B0047
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	-60(%rbp), %edx
	shll	$1, %edx
	addl	%ecx, %edx
	imull	-44(%rbp), %edx
	addl	-36(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$7, %eax
	jg	.LBB12_75
.LBB12_71:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769544, %edi          # imm = 0x1B0048
	callq	enqueue_signature
	cmpl	$0, -60(%rbp)
	jne	.LBB12_76
# BB#72:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769545, %edi          # imm = 0x1B0049
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movl	-64(%rbp), %edx
	shll	$1, %edx
	addl	%ecx, %edx
	movslq	%edx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$7, %eax
	jle	.LBB12_76
# BB#73:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769546, %edi          # imm = 0x1B004A
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movl	-64(%rbp), %edx
	shll	$1, %edx
	addl	%ecx, %edx
	movslq	%edx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$7, %eax
	jle	.LBB12_76
# BB#74:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769547, %edi          # imm = 0x1B004B
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movl	-64(%rbp), %edx
	shll	$1, %edx
	addl	%ecx, %edx
	movslq	%edx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$7, %eax
	jle	.LBB12_76
.LBB12_75:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769548, %edi          # imm = 0x1B004C
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	$100, (%rax,%rcx)
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	-60(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	addl	-64(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	$3, (%rax,%rcx)
.LBB12_76:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769549, %edi          # imm = 0x1B004D
	callq	enqueue_signature
.LBB12_77:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769550, %edi          # imm = 0x1B004E
	callq	enqueue_signature
	jmp	.LBB12_87
.LBB12_78:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769551, %edi          # imm = 0x1B004F
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -128(%rbp)
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -124(%rbp)
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -116(%rbp)
	movl	-128(%rbp), %eax
	addl	-124(%rbp), %eax
	addl	-120(%rbp), %eax
	addl	-116(%rbp), %eax
	cmpl	$2, %eax
	jne	.LBB12_86
# BB#79:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769552, %edi          # imm = 0x1B0050
	callq	enqueue_signature
	movl	-116(%rbp), %eax
	orl	-124(%rbp), %eax
	movl	-128(%rbp), %ecx
	orl	-120(%rbp), %ecx
	andl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB12_86
# BB#80:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769553, %edi          # imm = 0x1B0051
	callq	enqueue_signature
	movl	-128(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %edx
	subl	$2, %edx
	imull	-44(%rbp), %edx
	addl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	movzbl	(%rax,%rdx), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %esi
	subl	$2, %esi
	imull	-44(%rbp), %esi
	addl	-36(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rsi
	movzbl	(%rax,%rsi), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	orl	%edx, %eax
	andl	%ecx, %eax
	movl	-116(%rbp), %edx
	movq	-56(%rbp), %rcx
	movl	-40(%rbp), %esi
	subl	$1, %esi
	imull	-44(%rbp), %esi
	addl	-36(%rbp), %esi
	subl	$2, %esi
	movslq	%esi, %rsi
	movzbl	(%rcx,%rsi), %ecx
	cmpl	$8, %ecx
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	-56(%rbp), %rcx
	movl	-40(%rbp), %edi
	addl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-36(%rbp), %edi
	subl	$2, %edi
	movslq	%edi, %rdi
	movzbl	(%rcx,%rdi), %ecx
	cmpl	$8, %ecx
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	orl	%esi, %ecx
	andl	%edx, %ecx
	orl	%eax, %ecx
	movl	-124(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %esi
	subl	$1, %esi
	imull	-44(%rbp), %esi
	addl	-36(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rsi
	movzbl	(%rax,%rsi), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %esi
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %edi
	addl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-36(%rbp), %edi
	addl	$2, %edi
	movslq	%edi, %rdi
	movzbl	(%rax,%rdi), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	orl	%esi, %eax
	andl	%edx, %eax
	orl	%ecx, %eax
	movl	-120(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	-40(%rbp), %esi
	addl	$2, %esi
	imull	-44(%rbp), %esi
	addl	-36(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	cmpl	$8, %edx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
	movq	-56(%rbp), %rsi
	movl	-40(%rbp), %edi
	addl	$2, %edi
	imull	-44(%rbp), %edi
	addl	-36(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	movzbl	(%rsi,%rdi), %esi
	cmpl	$8, %esi
	setl	%bl
	andb	$1, %bl
	movzbl	%bl, %esi
	orl	%edx, %esi
	andl	%ecx, %esi
	orl	%eax, %esi
	cmpl	$0, %esi
	je	.LBB12_86
# BB#81:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769554, %edi          # imm = 0x1B0052
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	$100, (%rax,%rcx)
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -36(%rbp)
	cmpl	$4, -40(%rbp)
	jge	.LBB12_83
# BB#82:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769555, %edi          # imm = 0x1B0053
	callq	enqueue_signature
	movl	$4, -40(%rbp)
.LBB12_83:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769556, %edi          # imm = 0x1B0054
	callq	enqueue_signature
	cmpl	$4, -36(%rbp)
	jge	.LBB12_85
# BB#84:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769557, %edi          # imm = 0x1B0055
	callq	enqueue_signature
	movl	$4, -36(%rbp)
.LBB12_85:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769558, %edi          # imm = 0x1B0056
	callq	enqueue_signature
.LBB12_86:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769559, %edi          # imm = 0x1B0057
	callq	enqueue_signature
.LBB12_87:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769560, %edi          # imm = 0x1B0058
	callq	enqueue_signature
.LBB12_88:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769561, %edi          # imm = 0x1B0059
	callq	enqueue_signature
	cmpl	$2, -160(%rbp)
	jle	.LBB12_98
# BB#89:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769562, %edi          # imm = 0x1B005A
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -128(%rbp)
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -124(%rbp)
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -120(%rbp)
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -116(%rbp)
	movl	-128(%rbp), %eax
	addl	-124(%rbp), %eax
	addl	-120(%rbp), %eax
	addl	-116(%rbp), %eax
	cmpl	$1, %eax
	jle	.LBB12_97
# BB#90:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769563, %edi          # imm = 0x1B005B
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -140(%rbp)
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -132(%rbp)
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -168(%rbp)
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -164(%rbp)
	movl	-140(%rbp), %eax
	orl	-128(%rbp), %eax
	movl	%eax, -196(%rbp)
	movl	-132(%rbp), %eax
	orl	-124(%rbp), %eax
	movl	%eax, -192(%rbp)
	movl	-164(%rbp), %eax
	orl	-120(%rbp), %eax
	movl	%eax, -188(%rbp)
	movl	-168(%rbp), %eax
	orl	-116(%rbp), %eax
	movl	%eax, -184(%rbp)
	movl	-196(%rbp), %eax
	addl	-192(%rbp), %eax
	addl	-188(%rbp), %eax
	addl	-184(%rbp), %eax
	movl	-128(%rbp), %ecx
	andl	-192(%rbp), %ecx
	movl	-124(%rbp), %edx
	andl	-188(%rbp), %edx
	addl	%ecx, %edx
	movl	-120(%rbp), %ecx
	andl	-184(%rbp), %ecx
	addl	%edx, %ecx
	movl	-116(%rbp), %edx
	andl	-196(%rbp), %edx
	addl	%ecx, %edx
	subl	%edx, %eax
	cmpl	$2, %eax
	jge	.LBB12_96
# BB#91:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769564, %edi          # imm = 0x1B005C
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	$100, (%rax,%rcx)
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -36(%rbp)
	cmpl	$4, -40(%rbp)
	jge	.LBB12_93
# BB#92:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769565, %edi          # imm = 0x1B005D
	callq	enqueue_signature
	movl	$4, -40(%rbp)
.LBB12_93:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769566, %edi          # imm = 0x1B005E
	callq	enqueue_signature
	cmpl	$4, -36(%rbp)
	jge	.LBB12_95
# BB#94:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$1769567, %edi          # imm = 0x1B005F
	callq	enqueue_signature
	movl	$4, -36(%rbp)
.LBB12_95:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769568, %edi          # imm = 0x1B0060
	callq	enqueue_signature
.LBB12_96:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769569, %edi          # imm = 0x1B0061
	callq	enqueue_signature
.LBB12_97:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769570, %edi          # imm = 0x1B0062
	callq	enqueue_signature
.LBB12_98:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769571, %edi          # imm = 0x1B0063
	callq	enqueue_signature
.LBB12_99:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$1769572, %edi          # imm = 0x1B0064
	callq	enqueue_signature
# BB#100:                               #   in Loop: Header=BB12_3 Depth=2
	movl	$1769573, %edi          # imm = 0x1B0065
	callq	enqueue_signature
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB12_3
.LBB12_101:                             #   in Loop: Header=BB12_1 Depth=1
	movl	$1769574, %edi          # imm = 0x1B0066
	callq	enqueue_signature
# BB#102:                               #   in Loop: Header=BB12_1 Depth=1
	movl	$1769575, %edi          # imm = 0x1B0067
	callq	enqueue_signature
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB12_1
.LBB12_103:
	movl	$1769576, %edi          # imm = 0x1B0068
	callq	enqueue_signature_with_return
	movl	-208(%rbp), %eax
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	susan_thin, .Lfunc_end12-susan_thin
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function susan_edges
.LCPI13_0:
	.quad	4606281698874543309     # double 0.90000000000000002
.LCPI13_2:
	.quad	4602678819172646912     # double 0.5
.LCPI13_3:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI13_1:
	.long	1232348160              # float 1.0E+6
	.text
	.globl	susan_edges
	.p2align	4, 0x90
	.type	susan_edges,@function
susan_edges:                            # @susan_edges
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi87:
	.cfi_def_cfa_offset 16
.Lcfi88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi89:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
.Lcfi90:
	.cfi_offset %rbx, -56
.Lcfi91:
	.cfi_offset %r12, -48
.Lcfi92:
	.cfi_offset %r13, -40
.Lcfi93:
	.cfi_offset %r14, -32
.Lcfi94:
	.cfi_offset %r15, -24
	movl	%r9d, -144(%rbp)        # 4-byte Spill
	movl	%r8d, %r15d
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	16(%rbp), %eax
	movl	$1835009, %edi          # imm = 0x1C0001
	callq	enqueue_signature
	movq	%r14, -136(%rbp)
	movq	%rbx, -120(%rbp)
	movq	%r13, -160(%rbp)
	movq	%r12, -152(%rbp)
	movl	%r15d, -128(%rbp)
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -88(%rbp)
	movq	-120(%rbp), %rdi
	movl	-88(%rbp), %eax
	imull	16(%rbp), %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset
# BB#1:
	movl	$1835010, %edi          # imm = 0x1C0002
	callq	enqueue_signature
	movl	$3, -96(%rbp)
.LBB13_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_4 Depth 2
	movl	$1835011, %edi          # imm = 0x1C0003
	callq	enqueue_signature
	movl	-96(%rbp), %eax
	movl	16(%rbp), %ecx
	subl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB13_11
# BB#3:                                 #   in Loop: Header=BB13_2 Depth=1
	movl	$1835012, %edi          # imm = 0x1C0004
	callq	enqueue_signature
	movl	$3, -92(%rbp)
.LBB13_4:                               #   Parent Loop BB13_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1835013, %edi          # imm = 0x1C0005
	callq	enqueue_signature
	movl	-92(%rbp), %eax
	movl	-88(%rbp), %ecx
	subl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB13_9
# BB#5:                                 #   in Loop: Header=BB13_4 Depth=2
	movl	$1835014, %edi          # imm = 0x1C0006
	callq	enqueue_signature
	xorl	%eax, %eax
	movl	$100, -68(%rbp)
	movq	-136(%rbp), %rcx
	movl	-96(%rbp), %edx
	subl	$3, %edx
	imull	-88(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movslq	-92(%rbp), %rcx
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, -64(%rbp)
	movq	-152(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movl	-96(%rbp), %esi
	imull	-88(%rbp), %esi
	addl	-92(%rbp), %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-88(%rbp), %ecx
	subl	$3, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-88(%rbp), %ecx
	subl	$5, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-88(%rbp), %ecx
	subl	$6, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-64(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-88(%rbp), %ecx
	subl	$6, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-88(%rbp), %ecx
	subl	$5, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-88(%rbp), %ecx
	subl	$3, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jg	.LBB13_7
# BB#6:                                 #   in Loop: Header=BB13_4 Depth=2
	movl	$1835015, %edi          # imm = 0x1C0007
	callq	enqueue_signature
	movl	-128(%rbp), %eax
	subl	-68(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	-96(%rbp), %edx
	imull	-88(%rbp), %edx
	addl	-92(%rbp), %edx
	movslq	%edx, %rdx
	movl	%eax, (%rcx,%rdx,4)
.LBB13_7:                               #   in Loop: Header=BB13_4 Depth=2
	movl	$1835016, %edi          # imm = 0x1C0008
	callq	enqueue_signature
# BB#8:                                 #   in Loop: Header=BB13_4 Depth=2
	movl	$1835017, %edi          # imm = 0x1C0009
	callq	enqueue_signature
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB13_4
.LBB13_9:                               #   in Loop: Header=BB13_2 Depth=1
	movl	$1835018, %edi          # imm = 0x1C000A
	callq	enqueue_signature
# BB#10:                                #   in Loop: Header=BB13_2 Depth=1
	movl	$1835019, %edi          # imm = 0x1C000B
	callq	enqueue_signature
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB13_2
.LBB13_11:
	movl	$1835020, %edi          # imm = 0x1C000C
	callq	enqueue_signature
	movl	$4, -96(%rbp)
.LBB13_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_14 Depth 2
	movl	$1835021, %edi          # imm = 0x1C000D
	callq	enqueue_signature
	movl	-96(%rbp), %eax
	movl	16(%rbp), %ecx
	subl	$4, %ecx
	cmpl	%ecx, %eax
	jge	.LBB13_67
# BB#13:                                #   in Loop: Header=BB13_12 Depth=1
	movl	$1835022, %edi          # imm = 0x1C000E
	callq	enqueue_signature
	movl	$4, -92(%rbp)
.LBB13_14:                              #   Parent Loop BB13_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1835023, %edi          # imm = 0x1C000F
	callq	enqueue_signature
	movl	-92(%rbp), %eax
	movl	-88(%rbp), %ecx
	subl	$4, %ecx
	cmpl	%ecx, %eax
	jge	.LBB13_65
# BB#15:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835024, %edi          # imm = 0x1C0010
	callq	enqueue_signature
	movq	-120(%rbp), %rax
	movl	-96(%rbp), %ecx
	imull	-88(%rbp), %ecx
	addl	-92(%rbp), %ecx
	movslq	%ecx, %rcx
	cmpl	$0, (%rax,%rcx,4)
	jle	.LBB13_63
# BB#16:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835025, %edi          # imm = 0x1C0011
	callq	enqueue_signature
	movq	-120(%rbp), %rax
	movl	-96(%rbp), %ecx
	imull	-88(%rbp), %ecx
	addl	-92(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %eax
	subl	-112(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	-152(%rbp), %rax
	movq	-136(%rbp), %rcx
	movl	-96(%rbp), %edx
	imull	-88(%rbp), %edx
	addl	-92(%rbp), %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	movslq	%ecx, %rcx
	addq	%rax, %rcx
	movq	%rcx, -80(%rbp)
	cmpl	$600, -68(%rbp)         # imm = 0x258
	jle	.LBB13_42
# BB#17:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835026, %edi          # imm = 0x1C0012
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-136(%rbp), %rcx
	movl	-96(%rbp), %edx
	subl	$3, %edx
	imull	-88(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movslq	-92(%rbp), %rcx
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, -64(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-52(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movl	-88(%rbp), %ecx
	subl	$3, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	movl	-52(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-52(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movl	-88(%rbp), %ecx
	subl	$5, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movl	-52(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	movl	-52(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-52(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movl	-88(%rbp), %ecx
	subl	$6, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movl	-52(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	movl	-52(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-52(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movq	-64(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-88(%rbp), %ecx
	subl	$6, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movl	-52(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	movl	-52(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-52(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movl	-88(%rbp), %ecx
	subl	$5, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	movl	-52(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-52(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movl	-88(%rbp), %ecx
	subl	$3, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-52(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movb	(%rcx,%rax), %al
	movb	%al, -41(%rbp)
	movzbl	-41(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movzbl	-41(%rbp), %eax
	imull	$3, %eax, %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	-48(%rbp), %ecx
	imull	-48(%rbp), %ecx
	addl	%eax, %ecx
	cvtsi2ssl	%ecx, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	sqrt
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
# BB#18:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835027, %edi          # imm = 0x1C0013
	callq	enqueue_signature
	movsd	.LCPI13_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -108(%rbp)
	cvtss2sd	-108(%rbp), %xmm1
	cvtsi2ssl	-68(%rbp), %xmm2
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB13_40
# BB#19:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835028, %edi          # imm = 0x1C0014
	callq	enqueue_signature
	movl	$0, -124(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB13_21
# BB#20:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835029, %edi          # imm = 0x1C0015
	callq	enqueue_signature
	movss	.LCPI13_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -108(%rbp)
	jmp	.LBB13_22
.LBB13_21:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835030, %edi          # imm = 0x1C0016
	callq	enqueue_signature
	cvtsi2ssl	-48(%rbp), %xmm0
	cvtsi2ssl	-52(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -108(%rbp)
.LBB13_22:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835031, %edi          # imm = 0x1C0017
	callq	enqueue_signature
	xorps	%xmm0, %xmm0
	ucomiss	-108(%rbp), %xmm0
	jbe	.LBB13_24
# BB#23:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835032, %edi          # imm = 0x1C0018
	callq	enqueue_signature
	movss	-108(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm0
	movss	%xmm0, -108(%rbp)
	movl	$-1, -84(%rbp)
	jmp	.LBB13_25
.LBB13_24:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835033, %edi          # imm = 0x1C0019
	callq	enqueue_signature
	movl	$1, -84(%rbp)
.LBB13_25:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835034, %edi          # imm = 0x1C001A
	callq	enqueue_signature
	movsd	.LCPI13_2(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	-108(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_27
# BB#26:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835035, %edi          # imm = 0x1C001B
	callq	enqueue_signature
	movl	$0, -104(%rbp)
	movl	$1, -100(%rbp)
	jmp	.LBB13_34
.LBB13_27:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835036, %edi          # imm = 0x1C001C
	callq	enqueue_signature
	movsd	.LCPI13_3(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	-108(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_29
# BB#28:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835037, %edi          # imm = 0x1C001D
	callq	enqueue_signature
	movl	$1, -104(%rbp)
	movl	$0, -100(%rbp)
	jmp	.LBB13_33
.LBB13_29:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835038, %edi          # imm = 0x1C001E
	callq	enqueue_signature
	cmpl	$0, -84(%rbp)
	jle	.LBB13_31
# BB#30:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835039, %edi          # imm = 0x1C001F
	callq	enqueue_signature
	movl	$1, -104(%rbp)
	movl	$1, -100(%rbp)
	jmp	.LBB13_32
.LBB13_31:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835040, %edi          # imm = 0x1C0020
	callq	enqueue_signature
	movl	$-1, -104(%rbp)
	movl	$1, -100(%rbp)
.LBB13_32:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835041, %edi          # imm = 0x1C0021
	callq	enqueue_signature
.LBB13_33:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835042, %edi          # imm = 0x1C0022
	callq	enqueue_signature
.LBB13_34:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835043, %edi          # imm = 0x1C0023
	callq	enqueue_signature
	movl	-112(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	-96(%rbp), %edx
	addl	-104(%rbp), %edx
	imull	-88(%rbp), %edx
	addl	-92(%rbp), %edx
	addl	-100(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB13_39
# BB#35:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835044, %edi          # imm = 0x1C0024
	callq	enqueue_signature
	movl	-112(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	-96(%rbp), %edx
	subl	-104(%rbp), %edx
	imull	-88(%rbp), %edx
	addl	-92(%rbp), %edx
	subl	-100(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB13_39
# BB#36:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835045, %edi          # imm = 0x1C0025
	callq	enqueue_signature
	movl	-112(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	-96(%rbp), %edx
	movl	-104(%rbp), %esi
	shll	$1, %esi
	addl	%edx, %esi
	imull	-88(%rbp), %esi
	addl	-92(%rbp), %esi
	movl	-100(%rbp), %edx
	shll	$1, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB13_39
# BB#37:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835046, %edi          # imm = 0x1C0026
	callq	enqueue_signature
	movl	-112(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	-96(%rbp), %edx
	movl	-104(%rbp), %esi
	shll	$1, %esi
	subl	%esi, %edx
	imull	-88(%rbp), %edx
	addl	-92(%rbp), %edx
	movl	-100(%rbp), %esi
	shll	$1, %esi
	subl	%esi, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB13_39
# BB#38:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835047, %edi          # imm = 0x1C0027
	callq	enqueue_signature
	movq	-160(%rbp), %rax
	movl	-96(%rbp), %ecx
	imull	-88(%rbp), %ecx
	addl	-92(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	$1, (%rax,%rcx)
.LBB13_39:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835048, %edi          # imm = 0x1C0028
	callq	enqueue_signature
	jmp	.LBB13_41
.LBB13_40:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835049, %edi          # imm = 0x1C0029
	callq	enqueue_signature
	movl	$1, -124(%rbp)
.LBB13_41:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835050, %edi          # imm = 0x1C002A
	callq	enqueue_signature
	jmp	.LBB13_43
.LBB13_42:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835051, %edi          # imm = 0x1C002B
	callq	enqueue_signature
	movl	$1, -124(%rbp)
.LBB13_43:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835052, %edi          # imm = 0x1C002C
	callq	enqueue_signature
	cmpl	$1, -124(%rbp)
	jne	.LBB13_62
# BB#44:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835053, %edi          # imm = 0x1C002D
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-136(%rbp), %rcx
	movl	-96(%rbp), %edx
	subl	$3, %edx
	imull	-88(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movslq	-92(%rbp), %rcx
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, -64(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$9, %ecx, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$9, %ecx, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$9, %ecx, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movl	-84(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -84(%rbp)
	movl	-88(%rbp), %ecx
	subl	$3, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	movl	-84(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	movl	-84(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -84(%rbp)
	movl	-88(%rbp), %ecx
	subl	$5, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$9, %ecx, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-84(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	movl	-84(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$9, %ecx, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movl	-84(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -84(%rbp)
	movl	-88(%rbp), %ecx
	subl	$6, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$9, %ecx, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-64(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$9, %ecx, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-88(%rbp), %ecx
	subl	$6, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$9, %ecx, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movl	-84(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	movl	-84(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-84(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$9, %ecx, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$3, %ecx, %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movl	-88(%rbp), %ecx
	subl	$5, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	movl	-84(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	movl	-84(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$1, %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	shll	$2, %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movl	-88(%rbp), %ecx
	subl	$3, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$9, %ecx, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movl	-84(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -84(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	imull	$9, %ecx, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movb	(%rcx,%rax), %al
	movb	%al, -41(%rbp)
	movzbl	-41(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movzbl	-41(%rbp), %eax
	imull	$9, %eax, %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	movzbl	-41(%rbp), %eax
	imull	$3, %eax, %eax
	addl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB13_46
# BB#45:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835054, %edi          # imm = 0x1C002E
	callq	enqueue_signature
	movss	.LCPI13_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -108(%rbp)
	jmp	.LBB13_47
.LBB13_46:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835055, %edi          # imm = 0x1C002F
	callq	enqueue_signature
	cvtsi2ssl	-52(%rbp), %xmm0
	cvtsi2ssl	-48(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -108(%rbp)
.LBB13_47:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835056, %edi          # imm = 0x1C0030
	callq	enqueue_signature
	movsd	.LCPI13_2(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	-108(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_49
# BB#48:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835057, %edi          # imm = 0x1C0031
	callq	enqueue_signature
	movl	$0, -104(%rbp)
	movl	$1, -100(%rbp)
	jmp	.LBB13_56
.LBB13_49:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835058, %edi          # imm = 0x1C0032
	callq	enqueue_signature
	movsd	.LCPI13_3(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	-108(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_51
# BB#50:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835059, %edi          # imm = 0x1C0033
	callq	enqueue_signature
	movl	$1, -104(%rbp)
	movl	$0, -100(%rbp)
	jmp	.LBB13_55
.LBB13_51:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835060, %edi          # imm = 0x1C0034
	callq	enqueue_signature
	cmpl	$0, -84(%rbp)
	jle	.LBB13_53
# BB#52:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835061, %edi          # imm = 0x1C0035
	callq	enqueue_signature
	movl	$-1, -104(%rbp)
	movl	$1, -100(%rbp)
	jmp	.LBB13_54
.LBB13_53:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835062, %edi          # imm = 0x1C0036
	callq	enqueue_signature
	movl	$1, -104(%rbp)
	movl	$1, -100(%rbp)
.LBB13_54:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835063, %edi          # imm = 0x1C0037
	callq	enqueue_signature
.LBB13_55:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835064, %edi          # imm = 0x1C0038
	callq	enqueue_signature
.LBB13_56:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835065, %edi          # imm = 0x1C0039
	callq	enqueue_signature
	movl	-112(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	-96(%rbp), %edx
	addl	-104(%rbp), %edx
	imull	-88(%rbp), %edx
	addl	-92(%rbp), %edx
	addl	-100(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB13_61
# BB#57:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835066, %edi          # imm = 0x1C003A
	callq	enqueue_signature
	movl	-112(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	-96(%rbp), %edx
	subl	-104(%rbp), %edx
	imull	-88(%rbp), %edx
	addl	-92(%rbp), %edx
	subl	-100(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB13_61
# BB#58:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835067, %edi          # imm = 0x1C003B
	callq	enqueue_signature
	movl	-112(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	-96(%rbp), %edx
	movl	-104(%rbp), %esi
	shll	$1, %esi
	addl	%edx, %esi
	imull	-88(%rbp), %esi
	addl	-92(%rbp), %esi
	movl	-100(%rbp), %edx
	shll	$1, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB13_61
# BB#59:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835068, %edi          # imm = 0x1C003C
	callq	enqueue_signature
	movl	-112(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	-96(%rbp), %edx
	movl	-104(%rbp), %esi
	shll	$1, %esi
	subl	%esi, %edx
	imull	-88(%rbp), %edx
	addl	-92(%rbp), %edx
	movl	-100(%rbp), %esi
	shll	$1, %esi
	subl	%esi, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB13_61
# BB#60:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835069, %edi          # imm = 0x1C003D
	callq	enqueue_signature
	movq	-160(%rbp), %rax
	movl	-96(%rbp), %ecx
	imull	-88(%rbp), %ecx
	addl	-92(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	$2, (%rax,%rcx)
.LBB13_61:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835070, %edi          # imm = 0x1C003E
	callq	enqueue_signature
.LBB13_62:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835071, %edi          # imm = 0x1C003F
	callq	enqueue_signature
.LBB13_63:                              #   in Loop: Header=BB13_14 Depth=2
	movl	$1835072, %edi          # imm = 0x1C0040
	callq	enqueue_signature
# BB#64:                                #   in Loop: Header=BB13_14 Depth=2
	movl	$1835073, %edi          # imm = 0x1C0041
	callq	enqueue_signature
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB13_14
.LBB13_65:                              #   in Loop: Header=BB13_12 Depth=1
	movl	$1835074, %edi          # imm = 0x1C0042
	callq	enqueue_signature
# BB#66:                                #   in Loop: Header=BB13_12 Depth=1
	movl	$1835075, %edi          # imm = 0x1C0043
	callq	enqueue_signature
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB13_12
.LBB13_67:
	movl	$1835076, %edi          # imm = 0x1C0044
	callq	enqueue_signature_with_return
	movl	-164(%rbp), %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	susan_edges, .Lfunc_end13-susan_edges
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function susan_edges_small
.LCPI14_0:
	.quad	4600877379321698714     # double 0.40000000000000002
.LCPI14_2:
	.quad	4602678819172646912     # double 0.5
.LCPI14_3:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI14_1:
	.long	1232348160              # float 1.0E+6
	.text
	.globl	susan_edges_small
	.p2align	4, 0x90
	.type	susan_edges_small,@function
susan_edges_small:                      # @susan_edges_small
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi95:
	.cfi_def_cfa_offset 16
.Lcfi96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi97:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
.Lcfi98:
	.cfi_offset %rbx, -56
.Lcfi99:
	.cfi_offset %r12, -48
.Lcfi100:
	.cfi_offset %r13, -40
.Lcfi101:
	.cfi_offset %r14, -32
.Lcfi102:
	.cfi_offset %r15, -24
	movl	%r9d, -144(%rbp)        # 4-byte Spill
	movl	%r8d, %r15d
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	16(%rbp), %eax
	movl	$1966081, %edi          # imm = 0x1E0001
	callq	enqueue_signature
	movq	%r14, -136(%rbp)
	movq	%rbx, -120(%rbp)
	movq	%r13, -160(%rbp)
	movq	%r12, -152(%rbp)
	movl	%r15d, -112(%rbp)
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	movq	-120(%rbp), %rdi
	movl	-68(%rbp), %eax
	imull	16(%rbp), %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset
# BB#1:
	movl	$1966082, %edi          # imm = 0x1E0002
	callq	enqueue_signature
	movl	$730, -112(%rbp)        # imm = 0x2DA
	movl	$1, -80(%rbp)
.LBB14_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_4 Depth 2
	movl	$1966083, %edi          # imm = 0x1E0003
	callq	enqueue_signature
	movl	-80(%rbp), %eax
	movl	16(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB14_11
# BB#3:                                 #   in Loop: Header=BB14_2 Depth=1
	movl	$1966084, %edi          # imm = 0x1E0004
	callq	enqueue_signature
	movl	$1, -76(%rbp)
.LBB14_4:                               #   Parent Loop BB14_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1966085, %edi          # imm = 0x1E0005
	callq	enqueue_signature
	movl	-76(%rbp), %eax
	movl	-68(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB14_9
# BB#5:                                 #   in Loop: Header=BB14_4 Depth=2
	movl	$1966086, %edi          # imm = 0x1E0006
	callq	enqueue_signature
	xorl	%eax, %eax
	movl	$100, -72(%rbp)
	movq	-136(%rbp), %rcx
	movl	-80(%rbp), %edx
	subl	$1, %edx
	imull	-68(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movslq	-76(%rbp), %rcx
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, -64(%rbp)
	movq	-152(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movl	-80(%rbp), %esi
	imull	-68(%rbp), %esi
	addl	-76(%rbp), %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-72(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-72(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-72(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	movl	-68(%rbp), %ecx
	subl	$2, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-72(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	movq	-64(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -64(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-72(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	movl	-68(%rbp), %ecx
	subl	$2, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-72(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-72(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jg	.LBB14_7
# BB#6:                                 #   in Loop: Header=BB14_4 Depth=2
	movl	$1966087, %edi          # imm = 0x1E0007
	callq	enqueue_signature
	movl	-112(%rbp), %eax
	subl	-72(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	-80(%rbp), %edx
	imull	-68(%rbp), %edx
	addl	-76(%rbp), %edx
	movslq	%edx, %rdx
	movl	%eax, (%rcx,%rdx,4)
.LBB14_7:                               #   in Loop: Header=BB14_4 Depth=2
	movl	$1966088, %edi          # imm = 0x1E0008
	callq	enqueue_signature
# BB#8:                                 #   in Loop: Header=BB14_4 Depth=2
	movl	$1966089, %edi          # imm = 0x1E0009
	callq	enqueue_signature
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB14_4
.LBB14_9:                               #   in Loop: Header=BB14_2 Depth=1
	movl	$1966090, %edi          # imm = 0x1E000A
	callq	enqueue_signature
# BB#10:                                #   in Loop: Header=BB14_2 Depth=1
	movl	$1966091, %edi          # imm = 0x1E000B
	callq	enqueue_signature
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB14_2
.LBB14_11:
	movl	$1966092, %edi          # imm = 0x1E000C
	callq	enqueue_signature
	movl	$2, -80(%rbp)
.LBB14_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_14 Depth 2
	movl	$1966093, %edi          # imm = 0x1E000D
	callq	enqueue_signature
	movl	-80(%rbp), %eax
	movl	16(%rbp), %ecx
	subl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB14_63
# BB#13:                                #   in Loop: Header=BB14_12 Depth=1
	movl	$1966094, %edi          # imm = 0x1E000E
	callq	enqueue_signature
	movl	$2, -76(%rbp)
.LBB14_14:                              #   Parent Loop BB14_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1966095, %edi          # imm = 0x1E000F
	callq	enqueue_signature
	movl	-76(%rbp), %eax
	movl	-68(%rbp), %ecx
	subl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB14_61
# BB#15:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966096, %edi          # imm = 0x1E0010
	callq	enqueue_signature
	movq	-120(%rbp), %rax
	movl	-80(%rbp), %ecx
	imull	-68(%rbp), %ecx
	addl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	cmpl	$0, (%rax,%rcx,4)
	jle	.LBB14_59
# BB#16:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966097, %edi          # imm = 0x1E0011
	callq	enqueue_signature
	movq	-120(%rbp), %rax
	movl	-80(%rbp), %ecx
	imull	-68(%rbp), %ecx
	addl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	-152(%rbp), %rax
	movq	-136(%rbp), %rcx
	movl	-80(%rbp), %edx
	imull	-68(%rbp), %edx
	addl	-76(%rbp), %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	movslq	%ecx, %rcx
	addq	%rax, %rcx
	movq	%rcx, -88(%rbp)
	cmpl	$250, -72(%rbp)
	jle	.LBB14_40
# BB#17:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966098, %edi          # imm = 0x1E0012
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-136(%rbp), %rcx
	movl	-80(%rbp), %edx
	subl	$1, %edx
	imull	-68(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movslq	-76(%rbp), %rcx
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, -64(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -48(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-52(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-48(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -48(%rbp)
	movl	-68(%rbp), %ecx
	subl	$2, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-52(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movq	-64(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -64(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-68(%rbp), %ecx
	subl	$2, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-52(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movb	(%rcx,%rax), %al
	movb	%al, -41(%rbp)
	movzbl	-41(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movzbl	-41(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	-48(%rbp), %ecx
	imull	-48(%rbp), %ecx
	addl	%eax, %ecx
	cvtsi2ssl	%ecx, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	sqrt
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
# BB#18:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966099, %edi          # imm = 0x1E0013
	callq	enqueue_signature
	movsd	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -96(%rbp)
	cvtss2sd	-96(%rbp), %xmm1
	cvtsi2ssl	-72(%rbp), %xmm2
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB14_38
# BB#19:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966100, %edi          # imm = 0x1E0014
	callq	enqueue_signature
	movl	$0, -124(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB14_21
# BB#20:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966101, %edi          # imm = 0x1E0015
	callq	enqueue_signature
	movss	.LCPI14_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -96(%rbp)
	jmp	.LBB14_22
.LBB14_21:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966102, %edi          # imm = 0x1E0016
	callq	enqueue_signature
	cvtsi2ssl	-48(%rbp), %xmm0
	cvtsi2ssl	-52(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -96(%rbp)
.LBB14_22:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966103, %edi          # imm = 0x1E0017
	callq	enqueue_signature
	xorps	%xmm0, %xmm0
	ucomiss	-96(%rbp), %xmm0
	jbe	.LBB14_24
# BB#23:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966104, %edi          # imm = 0x1E0018
	callq	enqueue_signature
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm0
	movss	%xmm0, -96(%rbp)
	movl	$-1, -92(%rbp)
	jmp	.LBB14_25
.LBB14_24:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966105, %edi          # imm = 0x1E0019
	callq	enqueue_signature
	movl	$1, -92(%rbp)
.LBB14_25:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966106, %edi          # imm = 0x1E001A
	callq	enqueue_signature
	movsd	.LCPI14_2(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	-96(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_27
# BB#26:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966107, %edi          # imm = 0x1E001B
	callq	enqueue_signature
	movl	$0, -104(%rbp)
	movl	$1, -100(%rbp)
	jmp	.LBB14_34
.LBB14_27:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966108, %edi          # imm = 0x1E001C
	callq	enqueue_signature
	movsd	.LCPI14_3(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	-96(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_29
# BB#28:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966109, %edi          # imm = 0x1E001D
	callq	enqueue_signature
	movl	$1, -104(%rbp)
	movl	$0, -100(%rbp)
	jmp	.LBB14_33
.LBB14_29:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966110, %edi          # imm = 0x1E001E
	callq	enqueue_signature
	cmpl	$0, -92(%rbp)
	jle	.LBB14_31
# BB#30:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966111, %edi          # imm = 0x1E001F
	callq	enqueue_signature
	movl	$1, -104(%rbp)
	movl	$1, -100(%rbp)
	jmp	.LBB14_32
.LBB14_31:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966112, %edi          # imm = 0x1E0020
	callq	enqueue_signature
	movl	$-1, -104(%rbp)
	movl	$1, -100(%rbp)
.LBB14_32:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966113, %edi          # imm = 0x1E0021
	callq	enqueue_signature
.LBB14_33:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966114, %edi          # imm = 0x1E0022
	callq	enqueue_signature
.LBB14_34:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966115, %edi          # imm = 0x1E0023
	callq	enqueue_signature
	movl	-108(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	-80(%rbp), %edx
	addl	-104(%rbp), %edx
	imull	-68(%rbp), %edx
	addl	-76(%rbp), %edx
	addl	-100(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB14_37
# BB#35:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966116, %edi          # imm = 0x1E0024
	callq	enqueue_signature
	movl	-108(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	-80(%rbp), %edx
	subl	-104(%rbp), %edx
	imull	-68(%rbp), %edx
	addl	-76(%rbp), %edx
	subl	-100(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB14_37
# BB#36:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966117, %edi          # imm = 0x1E0025
	callq	enqueue_signature
	movq	-160(%rbp), %rax
	movl	-80(%rbp), %ecx
	imull	-68(%rbp), %ecx
	addl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	$1, (%rax,%rcx)
.LBB14_37:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966118, %edi          # imm = 0x1E0026
	callq	enqueue_signature
	jmp	.LBB14_39
.LBB14_38:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966119, %edi          # imm = 0x1E0027
	callq	enqueue_signature
	movl	$1, -124(%rbp)
.LBB14_39:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966120, %edi          # imm = 0x1E0028
	callq	enqueue_signature
	jmp	.LBB14_41
.LBB14_40:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966121, %edi          # imm = 0x1E0029
	callq	enqueue_signature
	movl	$1, -124(%rbp)
.LBB14_41:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966122, %edi          # imm = 0x1E002A
	callq	enqueue_signature
	cmpl	$1, -124(%rbp)
	jne	.LBB14_58
# BB#42:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966123, %edi          # imm = 0x1E002B
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-136(%rbp), %rcx
	movl	-80(%rbp), %edx
	subl	$1, %edx
	imull	-68(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movslq	-76(%rbp), %rcx
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, -64(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -92(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-92(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-92(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -92(%rbp)
	movl	-68(%rbp), %ecx
	subl	$2, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-64(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -64(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-68(%rbp), %ecx
	subl	$2, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movzbl	-41(%rbp), %ecx
	movl	-92(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -92(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movb	(%rcx,%rsi), %cl
	movb	%cl, -41(%rbp)
	movzbl	-41(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movb	(%rcx,%rax), %al
	movb	%al, -41(%rbp)
	movzbl	-41(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movzbl	-41(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	movzbl	-41(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -92(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB14_44
# BB#43:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966124, %edi          # imm = 0x1E002C
	callq	enqueue_signature
	movss	.LCPI14_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -96(%rbp)
	jmp	.LBB14_45
.LBB14_44:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966125, %edi          # imm = 0x1E002D
	callq	enqueue_signature
	cvtsi2ssl	-52(%rbp), %xmm0
	cvtsi2ssl	-48(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -96(%rbp)
.LBB14_45:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966126, %edi          # imm = 0x1E002E
	callq	enqueue_signature
	movsd	.LCPI14_2(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	-96(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_47
# BB#46:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966127, %edi          # imm = 0x1E002F
	callq	enqueue_signature
	movl	$0, -104(%rbp)
	movl	$1, -100(%rbp)
	jmp	.LBB14_54
.LBB14_47:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966128, %edi          # imm = 0x1E0030
	callq	enqueue_signature
	movsd	.LCPI14_3(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	-96(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_49
# BB#48:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966129, %edi          # imm = 0x1E0031
	callq	enqueue_signature
	movl	$1, -104(%rbp)
	movl	$0, -100(%rbp)
	jmp	.LBB14_53
.LBB14_49:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966130, %edi          # imm = 0x1E0032
	callq	enqueue_signature
	cmpl	$0, -92(%rbp)
	jle	.LBB14_51
# BB#50:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966131, %edi          # imm = 0x1E0033
	callq	enqueue_signature
	movl	$-1, -104(%rbp)
	movl	$1, -100(%rbp)
	jmp	.LBB14_52
.LBB14_51:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966132, %edi          # imm = 0x1E0034
	callq	enqueue_signature
	movl	$1, -104(%rbp)
	movl	$1, -100(%rbp)
.LBB14_52:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966133, %edi          # imm = 0x1E0035
	callq	enqueue_signature
.LBB14_53:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966134, %edi          # imm = 0x1E0036
	callq	enqueue_signature
.LBB14_54:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966135, %edi          # imm = 0x1E0037
	callq	enqueue_signature
	movl	-108(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	-80(%rbp), %edx
	addl	-104(%rbp), %edx
	imull	-68(%rbp), %edx
	addl	-76(%rbp), %edx
	addl	-100(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB14_57
# BB#55:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966136, %edi          # imm = 0x1E0038
	callq	enqueue_signature
	movl	-108(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	-80(%rbp), %edx
	subl	-104(%rbp), %edx
	imull	-68(%rbp), %edx
	addl	-76(%rbp), %edx
	subl	-100(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB14_57
# BB#56:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966137, %edi          # imm = 0x1E0039
	callq	enqueue_signature
	movq	-160(%rbp), %rax
	movl	-80(%rbp), %ecx
	imull	-68(%rbp), %ecx
	addl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	$2, (%rax,%rcx)
.LBB14_57:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966138, %edi          # imm = 0x1E003A
	callq	enqueue_signature
.LBB14_58:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966139, %edi          # imm = 0x1E003B
	callq	enqueue_signature
.LBB14_59:                              #   in Loop: Header=BB14_14 Depth=2
	movl	$1966140, %edi          # imm = 0x1E003C
	callq	enqueue_signature
# BB#60:                                #   in Loop: Header=BB14_14 Depth=2
	movl	$1966141, %edi          # imm = 0x1E003D
	callq	enqueue_signature
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB14_14
.LBB14_61:                              #   in Loop: Header=BB14_12 Depth=1
	movl	$1966142, %edi          # imm = 0x1E003E
	callq	enqueue_signature
# BB#62:                                #   in Loop: Header=BB14_12 Depth=1
	movl	$1966143, %edi          # imm = 0x1E003F
	callq	enqueue_signature
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB14_12
.LBB14_63:
	movl	$1966144, %edi          # imm = 0x1E0040
	callq	enqueue_signature_with_return
	movl	-164(%rbp), %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	susan_edges_small, .Lfunc_end14-susan_edges_small
	.cfi_endproc
                                        # -- End function
	.globl	corner_draw             # -- Begin function corner_draw
	.p2align	4, 0x90
	.type	corner_draw,@function
corner_draw:                            # @corner_draw
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi103:
	.cfi_def_cfa_offset 16
.Lcfi104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi105:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
.Lcfi106:
	.cfi_offset %rbx, -48
.Lcfi107:
	.cfi_offset %r12, -40
.Lcfi108:
	.cfi_offset %r14, -32
.Lcfi109:
	.cfi_offset %r15, -24
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$2031617, %edi          # imm = 0x1F0001
	callq	enqueue_signature
	movq	%rbx, -72(%rbp)
	movq	%r12, -56(%rbp)
	movl	%r15d, -48(%rbp)
	movl	%r14d, -60(%rbp)
	movl	$0, -44(%rbp)
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	movl	$2031618, %edi          # imm = 0x1F0002
	callq	enqueue_signature
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rax, %rcx
	cmpl	$7, 8(%rcx)
	je	.LBB15_6
# BB#2:                                 #   in Loop: Header=BB15_1 Depth=1
	movl	$2031619, %edi          # imm = 0x1F0003
	callq	enqueue_signature
	cmpl	$0, -60(%rbp)
	jne	.LBB15_4
# BB#3:                                 #   in Loop: Header=BB15_1 Depth=1
	movl	$2031620, %edi          # imm = 0x1F0004
	callq	enqueue_signature
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rcx, %rdx
	movl	4(%rdx), %ecx
	subl	$1, %ecx
	imull	-48(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rax, %rdx
	movslq	(%rdx), %rax
	addq	%rcx, %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movb	$-1, (%rax)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movb	$-1, (%rax)
	movq	-40(%rbp), %rax
	movb	$-1, (%rax)
	movl	-48(%rbp), %eax
	subl	$2, %eax
	movq	-40(%rbp), %rcx
	cltq
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movb	$-1, (%rax)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	movb	$-1, (%rax)
	movl	-48(%rbp), %eax
	subl	$2, %eax
	movq	-40(%rbp), %rcx
	cltq
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movb	$-1, (%rax)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movb	$-1, (%rax)
	movq	-40(%rbp), %rax
	movb	$-1, (%rax)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB15_5
.LBB15_4:                               #   in Loop: Header=BB15_1 Depth=1
	movl	$2031621, %edi          # imm = 0x1F0005
	callq	enqueue_signature
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rcx, %rdx
	movl	4(%rdx), %ecx
	imull	-48(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rax, %rdx
	movslq	(%rdx), %rax
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB15_5:                               #   in Loop: Header=BB15_1 Depth=1
	movl	$2031622, %edi          # imm = 0x1F0006
	callq	enqueue_signature
	jmp	.LBB15_1
.LBB15_6:
	movl	$2031623, %edi          # imm = 0x1F0007
	callq	enqueue_signature_with_return
	movl	-76(%rbp), %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	corner_draw, .Lfunc_end15-corner_draw
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function susan_corners
.LCPI16_0:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI16_1:
	.long	1073741824              # float 2
.LCPI16_2:
	.long	1077936128              # float 3
	.text
	.globl	susan_corners
	.p2align	4, 0x90
	.type	susan_corners,@function
susan_corners:                          # @susan_corners
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi110:
	.cfi_def_cfa_offset 16
.Lcfi111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi112:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
.Lcfi113:
	.cfi_offset %rbx, -56
.Lcfi114:
	.cfi_offset %r12, -48
.Lcfi115:
	.cfi_offset %r13, -40
.Lcfi116:
	.cfi_offset %r14, -32
.Lcfi117:
	.cfi_offset %r15, -24
	movl	%r9d, -112(%rbp)        # 4-byte Spill
	movq	%r8, %r15
	movl	%ecx, %r12d
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	16(%rbp), %eax
	movl	$2097153, %edi          # imm = 0x200001
	callq	enqueue_signature
	movq	%r14, -120(%rbp)
	movq	%rbx, -96(%rbp)
	movq	%r13, -160(%rbp)
	movl	%r12d, -100(%rbp)
	movq	%r15, -128(%rbp)
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	movq	-96(%rbp), %rdi
	movl	-56(%rbp), %eax
	imull	16(%rbp), %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset
# BB#1:
	movl	$2097154, %edi          # imm = 0x200002
	callq	enqueue_signature
	movl	-56(%rbp), %eax
	imull	16(%rbp), %eax
	movslq	%eax, %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
# BB#2:
	movl	$2097155, %edi          # imm = 0x200003
	callq	enqueue_signature
	movq	%rbx, -152(%rbp)
	movl	-56(%rbp), %eax
	imull	16(%rbp), %eax
	movslq	%eax, %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
# BB#3:
	movl	$2097156, %edi          # imm = 0x200004
	callq	enqueue_signature
	movq	%rbx, -144(%rbp)
	movl	$5, -72(%rbp)
.LBB16_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_6 Depth 2
	movl	$2097157, %edi          # imm = 0x200005
	callq	enqueue_signature
	movl	-72(%rbp), %eax
	movl	16(%rbp), %ecx
	subl	$5, %ecx
	cmpl	%ecx, %eax
	jge	.LBB16_78
# BB#5:                                 #   in Loop: Header=BB16_4 Depth=1
	movl	$2097158, %edi          # imm = 0x200006
	callq	enqueue_signature
	movl	$5, -68(%rbp)
.LBB16_6:                               #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2097159, %edi          # imm = 0x200007
	callq	enqueue_signature
	movl	-68(%rbp), %eax
	movl	-56(%rbp), %ecx
	subl	$5, %ecx
	cmpl	%ecx, %eax
	jge	.LBB16_76
# BB#7:                                 #   in Loop: Header=BB16_6 Depth=2
	movl	$2097160, %edi          # imm = 0x200008
	callq	enqueue_signature
	xorl	%eax, %eax
	movl	$100, -52(%rbp)
	movq	-120(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$3, %edx
	imull	-56(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movslq	-68(%rbp), %rcx
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, -64(%rbp)
	movq	-160(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movl	-72(%rbp), %esi
	imull	-56(%rbp), %esi
	addl	-68(%rbp), %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-56(%rbp), %ecx
	subl	$3, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-56(%rbp), %ecx
	subl	$5, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-56(%rbp), %ecx
	subl	$6, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB16_74
# BB#8:                                 #   in Loop: Header=BB16_6 Depth=2
	movl	$2097161, %edi          # imm = 0x200009
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -64(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB16_73
# BB#9:                                 #   in Loop: Header=BB16_6 Depth=2
	movl	$2097162, %edi          # imm = 0x20000A
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB16_72
# BB#10:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097163, %edi          # imm = 0x20000B
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB16_71
# BB#11:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097164, %edi          # imm = 0x20000C
	callq	enqueue_signature
	xorl	%eax, %eax
	movl	-56(%rbp), %ecx
	subl	$6, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB16_70
# BB#12:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097165, %edi          # imm = 0x20000D
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB16_69
# BB#13:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097166, %edi          # imm = 0x20000E
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB16_68
# BB#14:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097167, %edi          # imm = 0x20000F
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB16_67
# BB#15:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097168, %edi          # imm = 0x200010
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB16_66
# BB#16:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097169, %edi          # imm = 0x200011
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB16_65
# BB#17:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097170, %edi          # imm = 0x200012
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB16_64
# BB#18:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097171, %edi          # imm = 0x200013
	callq	enqueue_signature
	xorl	%eax, %eax
	movl	-56(%rbp), %ecx
	subl	$5, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB16_63
# BB#19:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097172, %edi          # imm = 0x200014
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB16_62
# BB#20:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097173, %edi          # imm = 0x200015
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB16_61
# BB#21:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097174, %edi          # imm = 0x200016
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB16_60
# BB#22:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097175, %edi          # imm = 0x200017
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB16_59
# BB#23:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097176, %edi          # imm = 0x200018
	callq	enqueue_signature
	xorl	%eax, %eax
	movl	-56(%rbp), %ecx
	subl	$3, %ecx
	movq	-64(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB16_58
# BB#24:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097177, %edi          # imm = 0x200019
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -64(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB16_57
# BB#25:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097178, %edi          # imm = 0x20001A
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB16_56
# BB#26:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097179, %edi          # imm = 0x20001B
	callq	enqueue_signature
	movl	$2, %ecx
	xorl	%eax, %eax
	movl	$0, -48(%rbp)
	movl	$0, -76(%rbp)
	movq	-120(%rbp), %rdx
	movl	-72(%rbp), %esi
	subl	$3, %esi
	imull	-56(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rdx, %rsi
	movslq	-68(%rbp), %rdx
	addq	%rsi, %rdx
	addq	$-1, %rdx
	movq	%rdx, -64(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	movl	-48(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -48(%rbp)
	movzbl	-41(%rbp), %edx
	imull	$3, %edx, %edx
	movl	-76(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	imull	$3, %edx, %edx
	movl	-76(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	addl	-48(%rbp), %edx
	movl	%edx, -48(%rbp)
	movzbl	-41(%rbp), %edx
	imull	$3, %edx, %edx
	movl	-76(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -76(%rbp)
	movl	-56(%rbp), %edx
	subl	$3, %edx
	movq	-64(%rbp), %rsi
	movslq	%edx, %rdx
	addq	%rsi, %rdx
	movq	%rdx, -64(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	movl	-48(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -48(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	movl	-76(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	movl	-48(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -48(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	movl	-76(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	movl	-76(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	addl	-48(%rbp), %edx
	movl	%edx, -48(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	movl	-76(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	addl	-48(%rbp), %edx
	movl	%edx, -48(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	movl	-76(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -76(%rbp)
	movl	-56(%rbp), %edx
	subl	$5, %edx
	movq	-64(%rbp), %rsi
	movslq	%edx, %rdx
	addq	%rsi, %rdx
	movq	%rdx, -64(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	imull	$3, %edx, %edx
	movl	-48(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -48(%rbp)
	movzbl	-41(%rbp), %edx
	movl	-76(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	movl	-48(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -48(%rbp)
	movzbl	-41(%rbp), %edx
	movl	-76(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	movl	-48(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -48(%rbp)
	movzbl	-41(%rbp), %edx
	movl	-76(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	movl	-76(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	addl	-48(%rbp), %edx
	movl	%edx, -48(%rbp)
	movzbl	-41(%rbp), %edx
	movl	-76(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	addl	-48(%rbp), %edx
	movl	%edx, -48(%rbp)
	movzbl	-41(%rbp), %edx
	movl	-76(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	imull	$3, %edx, %edx
	addl	-48(%rbp), %edx
	movl	%edx, -48(%rbp)
	movzbl	-41(%rbp), %edx
	movl	-76(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -76(%rbp)
	movl	-56(%rbp), %edx
	subl	$6, %edx
	movq	-64(%rbp), %rsi
	movslq	%edx, %rdx
	addq	%rsi, %rdx
	movq	%rdx, -64(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	imull	$3, %edx, %edx
	movl	-48(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -48(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	movl	-48(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -48(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	movl	-48(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -48(%rbp)
	movq	-64(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -64(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	addl	-48(%rbp), %edx
	movl	%edx, -48(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	addl	-48(%rbp), %edx
	movl	%edx, -48(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	imull	$3, %edx, %edx
	addl	-48(%rbp), %edx
	movl	%edx, -48(%rbp)
	movl	-56(%rbp), %edx
	subl	$6, %edx
	movq	-64(%rbp), %rsi
	movslq	%edx, %rdx
	addq	%rsi, %rdx
	movq	%rdx, -64(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	imull	$3, %edx, %edx
	movl	-48(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -48(%rbp)
	movzbl	-41(%rbp), %edx
	addl	-76(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	movl	-48(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -48(%rbp)
	movzbl	-41(%rbp), %edx
	addl	-76(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	movl	-48(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -48(%rbp)
	movzbl	-41(%rbp), %edx
	addl	-76(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	addl	-76(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	addl	-48(%rbp), %edx
	movl	%edx, -48(%rbp)
	movzbl	-41(%rbp), %edx
	addl	-76(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	addl	-48(%rbp), %edx
	movl	%edx, -48(%rbp)
	movzbl	-41(%rbp), %edx
	addl	-76(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	imull	$3, %edx, %edx
	addl	-48(%rbp), %edx
	movl	%edx, -48(%rbp)
	movzbl	-41(%rbp), %edx
	addl	-76(%rbp), %edx
	movl	%edx, -76(%rbp)
	movl	-56(%rbp), %edx
	subl	$5, %edx
	movq	-64(%rbp), %rsi
	movslq	%edx, %rdx
	addq	%rsi, %rdx
	movq	%rdx, -64(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	movl	-48(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -48(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	addl	-76(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	movl	-48(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -48(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	addl	-76(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	addl	-76(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	addl	-48(%rbp), %edx
	movl	%edx, -48(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	addl	-76(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	addl	-48(%rbp), %edx
	movl	%edx, -48(%rbp)
	movzbl	-41(%rbp), %edx
	shll	$1, %edx
	addl	-76(%rbp), %edx
	movl	%edx, -76(%rbp)
	movl	-56(%rbp), %edx
	subl	$3, %edx
	movq	-64(%rbp), %rsi
	movslq	%edx, %rdx
	addq	%rsi, %rdx
	movq	%rdx, -64(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	movl	-48(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -48(%rbp)
	movzbl	-41(%rbp), %edx
	imull	$3, %edx, %edx
	addl	-76(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	xorl	%edi, %edi
	subq	%rsi, %rdi
	movb	(%rdx,%rdi), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %edx
	imull	$3, %edx, %edx
	addl	-76(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movzbl	(%rsi), %esi
	movslq	%esi, %rsi
	subq	%rsi, %rax
	movb	(%rdx,%rax), %al
	movb	%al, -41(%rbp)
	movzbl	-41(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	movzbl	-41(%rbp), %eax
	imull	$3, %eax, %eax
	addl	-76(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-48(%rbp), %eax
	imull	-48(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-76(%rbp), %eax
	imull	-76(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %esi
	movl	-52(%rbp), %eax
	imull	-52(%rbp), %eax
	cltd
	idivl	%ecx
	cmpl	%eax, %esi
	jle	.LBB16_55
# BB#27:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097180, %edi          # imm = 0x20001C
	callq	enqueue_signature
	movl	-132(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.LBB16_40
# BB#28:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097181, %edi          # imm = 0x20001D
	callq	enqueue_signature
	cvtsi2ssl	-76(%rbp), %xmm0
	movss	%xmm0, -112(%rbp)       # 4-byte Spill
	movl	-48(%rbp), %edi
	callq	abs
	movl	%eax, %ebx
# BB#29:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097182, %edi          # imm = 0x20001E
	callq	enqueue_signature
	cvtsi2ssl	%ebx, %xmm0
	movss	-112(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, -104(%rbp)
	movl	-48(%rbp), %edi
	callq	abs
	movl	%eax, %ebx
# BB#30:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097183, %edi          # imm = 0x20001F
	callq	enqueue_signature
	xorps	%xmm0, %xmm0
	movl	%ebx, %eax
	cltd
	idivl	-48(%rbp)
	movl	%eax, -108(%rbp)
	movq	-88(%rbp), %r14
	movq	-120(%rbp), %r15
	movl	-72(%rbp), %ebx
	ucomiss	-104(%rbp), %xmm0
	jbe	.LBB16_32
# BB#31:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097184, %edi          # imm = 0x200020
	callq	enqueue_signature
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	-104(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r12d
	jmp	.LBB16_33
.LBB16_32:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097185, %edi          # imm = 0x200021
	callq	enqueue_signature
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	-104(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r12d
.LBB16_33:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097186, %edi          # imm = 0x200022
	callq	enqueue_signature
	xorps	%xmm0, %xmm0
	movss	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	addl	%r12d, %ebx
	imull	-56(%rbp), %ebx
	addl	-68(%rbp), %ebx
	addl	-108(%rbp), %ebx
	movslq	%ebx, %rcx
	movzbl	(%r15,%rcx), %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %rax
	movzbl	(%r14,%rax), %r12d
	movq	-88(%rbp), %r14
	movq	-120(%rbp), %r15
	movl	-72(%rbp), %ebx
	mulss	-104(%rbp), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB16_35
# BB#34:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097187, %edi          # imm = 0x200023
	callq	enqueue_signature
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	-104(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r13d
	jmp	.LBB16_36
.LBB16_35:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097188, %edi          # imm = 0x200024
	callq	enqueue_signature
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	-104(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r13d
.LBB16_36:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097189, %edi          # imm = 0x200025
	callq	enqueue_signature
	xorps	%xmm0, %xmm0
	movss	.LCPI16_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	addl	%r13d, %ebx
	imull	-56(%rbp), %ebx
	addl	-68(%rbp), %ebx
	movl	-108(%rbp), %ecx
	shll	$1, %ecx
	addl	%ebx, %ecx
	movslq	%ecx, %rcx
	movzbl	(%r15,%rcx), %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %rax
	movzbl	(%r14,%rax), %eax
	addl	%eax, %r12d
	movq	-88(%rbp), %r14
	movq	-120(%rbp), %r15
	movl	-72(%rbp), %ebx
	mulss	-104(%rbp), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB16_38
# BB#37:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097190, %edi          # imm = 0x200026
	callq	enqueue_signature
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	.LCPI16_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	-104(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r13d
	jmp	.LBB16_39
.LBB16_38:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097191, %edi          # imm = 0x200027
	callq	enqueue_signature
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	.LCPI16_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	-104(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r13d
.LBB16_39:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097192, %edi          # imm = 0x200028
	callq	enqueue_signature
	xorl	%eax, %eax
	addl	%r13d, %ebx
	imull	-56(%rbp), %ebx
	addl	-68(%rbp), %ebx
	imull	$3, -108(%rbp), %ecx
	addl	%ebx, %ecx
	movslq	%ecx, %rcx
	movzbl	(%r15,%rcx), %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %rax
	movzbl	(%r14,%rax), %eax
	addl	%eax, %r12d
	movl	%r12d, -108(%rbp)
	jmp	.LBB16_52
.LBB16_40:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097193, %edi          # imm = 0x200029
	callq	enqueue_signature
	cvtsi2ssl	-48(%rbp), %xmm0
	movss	%xmm0, -112(%rbp)       # 4-byte Spill
	movl	-76(%rbp), %edi
	callq	abs
	movl	%eax, %ebx
# BB#41:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097194, %edi          # imm = 0x20002A
	callq	enqueue_signature
	cvtsi2ssl	%ebx, %xmm0
	movss	-112(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, -104(%rbp)
	movl	-76(%rbp), %edi
	callq	abs
	movl	%eax, %ebx
# BB#42:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097195, %edi          # imm = 0x20002B
	callq	enqueue_signature
	xorps	%xmm0, %xmm0
	movl	%ebx, %eax
	cltd
	idivl	-76(%rbp)
	movl	%eax, -108(%rbp)
	movq	-88(%rbp), %r14
	movq	-120(%rbp), %r15
	movl	-72(%rbp), %ebx
	addl	-108(%rbp), %ebx
	imull	-56(%rbp), %ebx
	addl	-68(%rbp), %ebx
	ucomiss	-104(%rbp), %xmm0
	jbe	.LBB16_44
# BB#43:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097196, %edi          # imm = 0x20002C
	callq	enqueue_signature
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	-104(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r12d
	jmp	.LBB16_45
.LBB16_44:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097197, %edi          # imm = 0x20002D
	callq	enqueue_signature
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	-104(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r12d
.LBB16_45:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097198, %edi          # imm = 0x20002E
	callq	enqueue_signature
	xorps	%xmm0, %xmm0
	movss	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	addl	%r12d, %ebx
	movslq	%ebx, %rcx
	movzbl	(%r15,%rcx), %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %rax
	movzbl	(%r14,%rax), %r12d
	movq	-88(%rbp), %r14
	movq	-120(%rbp), %r15
	movl	-72(%rbp), %eax
	movl	-108(%rbp), %ebx
	shll	$1, %ebx
	addl	%eax, %ebx
	imull	-56(%rbp), %ebx
	addl	-68(%rbp), %ebx
	mulss	-104(%rbp), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB16_47
# BB#46:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097199, %edi          # imm = 0x20002F
	callq	enqueue_signature
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	-104(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r13d
	jmp	.LBB16_48
.LBB16_47:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097200, %edi          # imm = 0x200030
	callq	enqueue_signature
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	-104(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r13d
.LBB16_48:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097201, %edi          # imm = 0x200031
	callq	enqueue_signature
	xorps	%xmm0, %xmm0
	movss	.LCPI16_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	addl	%r13d, %ebx
	movslq	%ebx, %rcx
	movzbl	(%r15,%rcx), %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %rax
	movzbl	(%r14,%rax), %eax
	addl	%eax, %r12d
	movq	-88(%rbp), %r14
	movq	-120(%rbp), %r15
	movl	-72(%rbp), %eax
	imull	$3, -108(%rbp), %ebx
	addl	%eax, %ebx
	imull	-56(%rbp), %ebx
	addl	-68(%rbp), %ebx
	mulss	-104(%rbp), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB16_50
# BB#49:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097202, %edi          # imm = 0x200032
	callq	enqueue_signature
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	.LCPI16_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	-104(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r13d
	jmp	.LBB16_51
.LBB16_50:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097203, %edi          # imm = 0x200033
	callq	enqueue_signature
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	.LCPI16_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	-104(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r13d
.LBB16_51:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097204, %edi          # imm = 0x200034
	callq	enqueue_signature
	xorl	%eax, %eax
	addl	%r13d, %ebx
	movslq	%ebx, %rcx
	movzbl	(%r15,%rcx), %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %rax
	movzbl	(%r14,%rax), %eax
	addl	%eax, %r12d
	movl	%r12d, -108(%rbp)
.LBB16_52:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097205, %edi          # imm = 0x200035
	callq	enqueue_signature
	cmpl	$290, -108(%rbp)        # imm = 0x122
	jle	.LBB16_54
# BB#53:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097206, %edi          # imm = 0x200036
	callq	enqueue_signature
	movl	-100(%rbp), %eax
	subl	-52(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	movslq	%edx, %rdx
	movl	%eax, (%rcx,%rdx,4)
	imull	$51, -48(%rbp), %eax
	cltd
	idivl	-52(%rbp)
	movq	-152(%rbp), %rcx
	movl	-72(%rbp), %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	movslq	%edx, %rdx
	movl	%eax, (%rcx,%rdx,4)
	imull	$51, -76(%rbp), %eax
	cltd
	idivl	-52(%rbp)
	movq	-144(%rbp), %rcx
	movl	-72(%rbp), %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	movslq	%edx, %rdx
	movl	%eax, (%rcx,%rdx,4)
.LBB16_54:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097207, %edi          # imm = 0x200037
	callq	enqueue_signature
.LBB16_55:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097208, %edi          # imm = 0x200038
	callq	enqueue_signature
.LBB16_56:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097209, %edi          # imm = 0x200039
	callq	enqueue_signature
.LBB16_57:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097210, %edi          # imm = 0x20003A
	callq	enqueue_signature
.LBB16_58:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097211, %edi          # imm = 0x20003B
	callq	enqueue_signature
.LBB16_59:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097212, %edi          # imm = 0x20003C
	callq	enqueue_signature
.LBB16_60:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097213, %edi          # imm = 0x20003D
	callq	enqueue_signature
.LBB16_61:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097214, %edi          # imm = 0x20003E
	callq	enqueue_signature
.LBB16_62:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097215, %edi          # imm = 0x20003F
	callq	enqueue_signature
.LBB16_63:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097216, %edi          # imm = 0x200040
	callq	enqueue_signature
.LBB16_64:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097217, %edi          # imm = 0x200041
	callq	enqueue_signature
.LBB16_65:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097218, %edi          # imm = 0x200042
	callq	enqueue_signature
.LBB16_66:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097219, %edi          # imm = 0x200043
	callq	enqueue_signature
.LBB16_67:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097220, %edi          # imm = 0x200044
	callq	enqueue_signature
.LBB16_68:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097221, %edi          # imm = 0x200045
	callq	enqueue_signature
.LBB16_69:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097222, %edi          # imm = 0x200046
	callq	enqueue_signature
.LBB16_70:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097223, %edi          # imm = 0x200047
	callq	enqueue_signature
.LBB16_71:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097224, %edi          # imm = 0x200048
	callq	enqueue_signature
.LBB16_72:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097225, %edi          # imm = 0x200049
	callq	enqueue_signature
.LBB16_73:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097226, %edi          # imm = 0x20004A
	callq	enqueue_signature
.LBB16_74:                              #   in Loop: Header=BB16_6 Depth=2
	movl	$2097227, %edi          # imm = 0x20004B
	callq	enqueue_signature
# BB#75:                                #   in Loop: Header=BB16_6 Depth=2
	movl	$2097228, %edi          # imm = 0x20004C
	callq	enqueue_signature
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB16_6
.LBB16_76:                              #   in Loop: Header=BB16_4 Depth=1
	movl	$2097229, %edi          # imm = 0x20004D
	callq	enqueue_signature
# BB#77:                                #   in Loop: Header=BB16_4 Depth=1
	movl	$2097230, %edi          # imm = 0x20004E
	callq	enqueue_signature
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB16_4
.LBB16_78:
	movl	$2097231, %edi          # imm = 0x20004F
	callq	enqueue_signature
	movl	$0, -52(%rbp)
	movl	$5, -72(%rbp)
.LBB16_79:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_81 Depth 2
	movl	$2097232, %edi          # imm = 0x200050
	callq	enqueue_signature
	movl	-72(%rbp), %eax
	movl	16(%rbp), %ecx
	subl	$5, %ecx
	cmpl	%ecx, %eax
	jge	.LBB16_141
# BB#80:                                #   in Loop: Header=BB16_79 Depth=1
	movl	$2097233, %edi          # imm = 0x200051
	callq	enqueue_signature
	movl	$5, -68(%rbp)
.LBB16_81:                              #   Parent Loop BB16_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2097234, %edi          # imm = 0x200052
	callq	enqueue_signature
	movl	-68(%rbp), %eax
	movl	-56(%rbp), %ecx
	subl	$5, %ecx
	cmpl	%ecx, %eax
	jge	.LBB16_139
# BB#82:                                #   in Loop: Header=BB16_81 Depth=2
	movl	$2097235, %edi          # imm = 0x200053
	callq	enqueue_signature
	movq	-96(%rbp), %rax
	movl	-72(%rbp), %ecx
	imull	-56(%rbp), %ecx
	addl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jle	.LBB16_137
# BB#83:                                #   in Loop: Header=BB16_81 Depth=2
	movl	$2097236, %edi          # imm = 0x200054
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$3, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#84:                                #   in Loop: Header=BB16_81 Depth=2
	movl	$2097237, %edi          # imm = 0x200055
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$3, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#85:                                #   in Loop: Header=BB16_81 Depth=2
	movl	$2097238, %edi          # imm = 0x200056
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$3, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#86:                                #   in Loop: Header=BB16_81 Depth=2
	movl	$2097239, %edi          # imm = 0x200057
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$3, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#87:                                #   in Loop: Header=BB16_81 Depth=2
	movl	$2097240, %edi          # imm = 0x200058
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$3, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#88:                                #   in Loop: Header=BB16_81 Depth=2
	movl	$2097241, %edi          # imm = 0x200059
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$3, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#89:                                #   in Loop: Header=BB16_81 Depth=2
	movl	$2097242, %edi          # imm = 0x20005A
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$3, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#90:                                #   in Loop: Header=BB16_81 Depth=2
	movl	$2097243, %edi          # imm = 0x20005B
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$2, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#91:                                #   in Loop: Header=BB16_81 Depth=2
	movl	$2097244, %edi          # imm = 0x20005C
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$2, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#92:                                #   in Loop: Header=BB16_81 Depth=2
	movl	$2097245, %edi          # imm = 0x20005D
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$2, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#93:                                #   in Loop: Header=BB16_81 Depth=2
	movl	$2097246, %edi          # imm = 0x20005E
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$2, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#94:                                #   in Loop: Header=BB16_81 Depth=2
	movl	$2097247, %edi          # imm = 0x20005F
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$2, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#95:                                #   in Loop: Header=BB16_81 Depth=2
	movl	$2097248, %edi          # imm = 0x200060
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$2, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#96:                                #   in Loop: Header=BB16_81 Depth=2
	movl	$2097249, %edi          # imm = 0x200061
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$2, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#97:                                #   in Loop: Header=BB16_81 Depth=2
	movl	$2097250, %edi          # imm = 0x200062
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$1, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#98:                                #   in Loop: Header=BB16_81 Depth=2
	movl	$2097251, %edi          # imm = 0x200063
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$1, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#99:                                #   in Loop: Header=BB16_81 Depth=2
	movl	$2097252, %edi          # imm = 0x200064
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$1, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#100:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097253, %edi          # imm = 0x200065
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$1, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#101:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097254, %edi          # imm = 0x200066
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$1, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#102:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097255, %edi          # imm = 0x200067
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$1, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#103:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097256, %edi          # imm = 0x200068
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$1, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#104:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097257, %edi          # imm = 0x200069
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#105:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097258, %edi          # imm = 0x20006A
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#106:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097259, %edi          # imm = 0x20006B
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_136
# BB#107:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097260, %edi          # imm = 0x20006C
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#108:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097261, %edi          # imm = 0x20006D
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#109:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097262, %edi          # imm = 0x20006E
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#110:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097263, %edi          # imm = 0x20006F
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$1, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#111:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097264, %edi          # imm = 0x200070
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$1, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#112:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097265, %edi          # imm = 0x200071
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$1, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#113:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097266, %edi          # imm = 0x200072
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$1, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#114:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097267, %edi          # imm = 0x200073
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$1, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#115:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097268, %edi          # imm = 0x200074
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$1, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#116:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097269, %edi          # imm = 0x200075
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$1, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#117:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097270, %edi          # imm = 0x200076
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$2, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#118:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097271, %edi          # imm = 0x200077
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$2, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#119:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097272, %edi          # imm = 0x200078
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$2, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#120:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097273, %edi          # imm = 0x200079
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$2, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#121:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097274, %edi          # imm = 0x20007A
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$2, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#122:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097275, %edi          # imm = 0x20007B
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$2, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#123:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097276, %edi          # imm = 0x20007C
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$2, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#124:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097277, %edi          # imm = 0x20007D
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$3, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#125:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097278, %edi          # imm = 0x20007E
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$3, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#126:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097279, %edi          # imm = 0x20007F
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$3, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#127:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097280, %edi          # imm = 0x200080
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$3, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#128:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097281, %edi          # imm = 0x200081
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$3, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#129:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097282, %edi          # imm = 0x200082
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$3, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#130:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097283, %edi          # imm = 0x200083
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	$3, %edx
	imull	-56(%rbp), %edx
	addl	-68(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_136
# BB#131:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097284, %edi          # imm = 0x200084
	callq	enqueue_signature
	movq	-128(%rbp), %rax
	movslq	-52(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rax, %rcx
	movl	$0, 8(%rcx)
	movl	-68(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movl	-72(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rcx, %rdx
	movl	%eax, 4(%rdx)
	movq	-152(%rbp), %rax
	movl	-72(%rbp), %ecx
	imull	-56(%rbp), %ecx
	addl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-128(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rcx, %rdx
	movl	%eax, 12(%rdx)
	movq	-144(%rbp), %rax
	movl	-72(%rbp), %ecx
	imull	-56(%rbp), %ecx
	addl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-128(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rcx, %rdx
	movl	%eax, 16(%rdx)
	movq	-120(%rbp), %rax
	movl	-72(%rbp), %ecx
	imull	-56(%rbp), %ecx
	addl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	movq	-128(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rcx, %rdx
	movl	%eax, 20(%rdx)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	cmpl	$15000, -52(%rbp)       # imm = 0x3A98
	jne	.LBB16_135
# BB#132:
	movl	$2097285, %edi          # imm = 0x200085
	callq	enqueue_signature
	movabsq	$.L.str.29, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
# BB#133:
	movl	$2097286, %edi          # imm = 0x200086
	callq	enqueue_signature
	movl	$1, %edi
	callq	exit
# BB#134:
	movl	$2097287, %edi          # imm = 0x200087
	callq	enqueue_signature_with_return
.LBB16_135:                             #   in Loop: Header=BB16_81 Depth=2
	movl	$2097288, %edi          # imm = 0x200088
	callq	enqueue_signature
.LBB16_136:                             #   in Loop: Header=BB16_81 Depth=2
	movl	$2097289, %edi          # imm = 0x200089
	callq	enqueue_signature
.LBB16_137:                             #   in Loop: Header=BB16_81 Depth=2
	movl	$2097290, %edi          # imm = 0x20008A
	callq	enqueue_signature
# BB#138:                               #   in Loop: Header=BB16_81 Depth=2
	movl	$2097291, %edi          # imm = 0x20008B
	callq	enqueue_signature
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB16_81
.LBB16_139:                             #   in Loop: Header=BB16_79 Depth=1
	movl	$2097292, %edi          # imm = 0x20008C
	callq	enqueue_signature
# BB#140:                               #   in Loop: Header=BB16_79 Depth=1
	movl	$2097293, %edi          # imm = 0x20008D
	callq	enqueue_signature
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB16_79
.LBB16_141:
	movl	$2097294, %edi          # imm = 0x20008E
	callq	enqueue_signature
	movq	-128(%rbp), %rax
	movslq	-52(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rax, %rcx
	movl	$7, 8(%rcx)
	movq	-152(%rbp), %rdi
	callq	free
# BB#142:
	movl	$2097295, %edi          # imm = 0x20008F
	callq	enqueue_signature
	movq	-144(%rbp), %rdi
	callq	free
# BB#143:
	movl	$2097296, %edi          # imm = 0x200090
	callq	enqueue_signature_with_return
	movl	-164(%rbp), %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	susan_corners, .Lfunc_end16-susan_corners
	.cfi_endproc
                                        # -- End function
	.globl	susan_corners_quick     # -- Begin function susan_corners_quick
	.p2align	4, 0x90
	.type	susan_corners_quick,@function
susan_corners_quick:                    # @susan_corners_quick
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi118:
	.cfi_def_cfa_offset 16
.Lcfi119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi120:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Lcfi121:
	.cfi_offset %rbx, -56
.Lcfi122:
	.cfi_offset %r12, -48
.Lcfi123:
	.cfi_offset %r13, -40
.Lcfi124:
	.cfi_offset %r14, -32
.Lcfi125:
	.cfi_offset %r15, -24
	movl	%r9d, -124(%rbp)        # 4-byte Spill
	movq	%r8, %r15
	movl	%ecx, %r12d
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	16(%rbp), %eax
	movl	$2293761, %edi          # imm = 0x230001
	callq	enqueue_signature
	movq	%r14, -80(%rbp)
	movq	%rbx, -88(%rbp)
	movq	%r13, -136(%rbp)
	movl	%r12d, -92(%rbp)
	movq	%r15, -120(%rbp)
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
	movq	-88(%rbp), %rdi
	movl	-44(%rbp), %eax
	imull	16(%rbp), %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset
# BB#1:
	movl	$2293762, %edi          # imm = 0x230002
	callq	enqueue_signature
	movl	$7, -52(%rbp)
.LBB17_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_4 Depth 2
	movl	$2293763, %edi          # imm = 0x230003
	callq	enqueue_signature
	movl	-52(%rbp), %eax
	movl	16(%rbp), %ecx
	subl	$7, %ecx
	cmpl	%ecx, %eax
	jge	.LBB17_47
# BB#3:                                 #   in Loop: Header=BB17_2 Depth=1
	movl	$2293764, %edi          # imm = 0x230004
	callq	enqueue_signature
	movl	$7, -48(%rbp)
.LBB17_4:                               #   Parent Loop BB17_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2293765, %edi          # imm = 0x230005
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	$7, %ecx
	cmpl	%ecx, %eax
	jge	.LBB17_45
# BB#5:                                 #   in Loop: Header=BB17_4 Depth=2
	movl	$2293766, %edi          # imm = 0x230006
	callq	enqueue_signature
	xorl	%eax, %eax
	movl	$100, -56(%rbp)
	movq	-80(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$3, %edx
	imull	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movslq	-48(%rbp), %rcx
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, -72(%rbp)
	movq	-136(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movq	%rdx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	subl	$3, %ecx
	movq	-72(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	subl	$5, %ecx
	movq	-72(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	subl	$6, %ecx
	movq	-72(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	subq	%rdx, %rsi
	movzbl	(%rcx,%rsi), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB17_43
# BB#6:                                 #   in Loop: Header=BB17_4 Depth=2
	movl	$2293767, %edi          # imm = 0x230007
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-72(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -72(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB17_42
# BB#7:                                 #   in Loop: Header=BB17_4 Depth=2
	movl	$2293768, %edi          # imm = 0x230008
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB17_41
# BB#8:                                 #   in Loop: Header=BB17_4 Depth=2
	movl	$2293769, %edi          # imm = 0x230009
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB17_40
# BB#9:                                 #   in Loop: Header=BB17_4 Depth=2
	movl	$2293770, %edi          # imm = 0x23000A
	callq	enqueue_signature
	xorl	%eax, %eax
	movl	-44(%rbp), %ecx
	subl	$6, %ecx
	movq	-72(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB17_39
# BB#10:                                #   in Loop: Header=BB17_4 Depth=2
	movl	$2293771, %edi          # imm = 0x23000B
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB17_38
# BB#11:                                #   in Loop: Header=BB17_4 Depth=2
	movl	$2293772, %edi          # imm = 0x23000C
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB17_37
# BB#12:                                #   in Loop: Header=BB17_4 Depth=2
	movl	$2293773, %edi          # imm = 0x23000D
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB17_36
# BB#13:                                #   in Loop: Header=BB17_4 Depth=2
	movl	$2293774, %edi          # imm = 0x23000E
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB17_35
# BB#14:                                #   in Loop: Header=BB17_4 Depth=2
	movl	$2293775, %edi          # imm = 0x23000F
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB17_34
# BB#15:                                #   in Loop: Header=BB17_4 Depth=2
	movl	$2293776, %edi          # imm = 0x230010
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB17_33
# BB#16:                                #   in Loop: Header=BB17_4 Depth=2
	movl	$2293777, %edi          # imm = 0x230011
	callq	enqueue_signature
	xorl	%eax, %eax
	movl	-44(%rbp), %ecx
	subl	$5, %ecx
	movq	-72(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB17_32
# BB#17:                                #   in Loop: Header=BB17_4 Depth=2
	movl	$2293778, %edi          # imm = 0x230012
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB17_31
# BB#18:                                #   in Loop: Header=BB17_4 Depth=2
	movl	$2293779, %edi          # imm = 0x230013
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB17_30
# BB#19:                                #   in Loop: Header=BB17_4 Depth=2
	movl	$2293780, %edi          # imm = 0x230014
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB17_29
# BB#20:                                #   in Loop: Header=BB17_4 Depth=2
	movl	$2293781, %edi          # imm = 0x230015
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB17_28
# BB#21:                                #   in Loop: Header=BB17_4 Depth=2
	movl	$2293782, %edi          # imm = 0x230016
	callq	enqueue_signature
	xorl	%eax, %eax
	movl	-44(%rbp), %ecx
	subl	$3, %ecx
	movq	-72(%rbp), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB17_27
# BB#22:                                #   in Loop: Header=BB17_4 Depth=2
	movl	$2293783, %edi          # imm = 0x230017
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -72(%rbp)
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB17_26
# BB#23:                                #   in Loop: Header=BB17_4 Depth=2
	movl	$2293784, %edi          # imm = 0x230018
	callq	enqueue_signature
	xorl	%eax, %eax
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movzbl	(%rcx,%rax), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB17_25
# BB#24:                                #   in Loop: Header=BB17_4 Depth=2
	movl	$2293785, %edi          # imm = 0x230019
	callq	enqueue_signature
	movl	-92(%rbp), %eax
	subl	-56(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	movslq	%edx, %rdx
	movl	%eax, (%rcx,%rdx,4)
.LBB17_25:                              #   in Loop: Header=BB17_4 Depth=2
	movl	$2293786, %edi          # imm = 0x23001A
	callq	enqueue_signature
.LBB17_26:                              #   in Loop: Header=BB17_4 Depth=2
	movl	$2293787, %edi          # imm = 0x23001B
	callq	enqueue_signature
.LBB17_27:                              #   in Loop: Header=BB17_4 Depth=2
	movl	$2293788, %edi          # imm = 0x23001C
	callq	enqueue_signature
.LBB17_28:                              #   in Loop: Header=BB17_4 Depth=2
	movl	$2293789, %edi          # imm = 0x23001D
	callq	enqueue_signature
.LBB17_29:                              #   in Loop: Header=BB17_4 Depth=2
	movl	$2293790, %edi          # imm = 0x23001E
	callq	enqueue_signature
.LBB17_30:                              #   in Loop: Header=BB17_4 Depth=2
	movl	$2293791, %edi          # imm = 0x23001F
	callq	enqueue_signature
.LBB17_31:                              #   in Loop: Header=BB17_4 Depth=2
	movl	$2293792, %edi          # imm = 0x230020
	callq	enqueue_signature
.LBB17_32:                              #   in Loop: Header=BB17_4 Depth=2
	movl	$2293793, %edi          # imm = 0x230021
	callq	enqueue_signature
.LBB17_33:                              #   in Loop: Header=BB17_4 Depth=2
	movl	$2293794, %edi          # imm = 0x230022
	callq	enqueue_signature
.LBB17_34:                              #   in Loop: Header=BB17_4 Depth=2
	movl	$2293795, %edi          # imm = 0x230023
	callq	enqueue_signature
.LBB17_35:                              #   in Loop: Header=BB17_4 Depth=2
	movl	$2293796, %edi          # imm = 0x230024
	callq	enqueue_signature
.LBB17_36:                              #   in Loop: Header=BB17_4 Depth=2
	movl	$2293797, %edi          # imm = 0x230025
	callq	enqueue_signature
.LBB17_37:                              #   in Loop: Header=BB17_4 Depth=2
	movl	$2293798, %edi          # imm = 0x230026
	callq	enqueue_signature
.LBB17_38:                              #   in Loop: Header=BB17_4 Depth=2
	movl	$2293799, %edi          # imm = 0x230027
	callq	enqueue_signature
.LBB17_39:                              #   in Loop: Header=BB17_4 Depth=2
	movl	$2293800, %edi          # imm = 0x230028
	callq	enqueue_signature
.LBB17_40:                              #   in Loop: Header=BB17_4 Depth=2
	movl	$2293801, %edi          # imm = 0x230029
	callq	enqueue_signature
.LBB17_41:                              #   in Loop: Header=BB17_4 Depth=2
	movl	$2293802, %edi          # imm = 0x23002A
	callq	enqueue_signature
.LBB17_42:                              #   in Loop: Header=BB17_4 Depth=2
	movl	$2293803, %edi          # imm = 0x23002B
	callq	enqueue_signature
.LBB17_43:                              #   in Loop: Header=BB17_4 Depth=2
	movl	$2293804, %edi          # imm = 0x23002C
	callq	enqueue_signature
# BB#44:                                #   in Loop: Header=BB17_4 Depth=2
	movl	$2293805, %edi          # imm = 0x23002D
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB17_4
.LBB17_45:                              #   in Loop: Header=BB17_2 Depth=1
	movl	$2293806, %edi          # imm = 0x23002E
	callq	enqueue_signature
# BB#46:                                #   in Loop: Header=BB17_2 Depth=1
	movl	$2293807, %edi          # imm = 0x23002F
	callq	enqueue_signature
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB17_2
.LBB17_47:
	movl	$2293808, %edi          # imm = 0x230030
	callq	enqueue_signature
	movl	$0, -56(%rbp)
	movl	$7, -52(%rbp)
.LBB17_48:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_50 Depth 2
	movl	$2293809, %edi          # imm = 0x230031
	callq	enqueue_signature
	movl	-52(%rbp), %eax
	movl	16(%rbp), %ecx
	subl	$7, %ecx
	cmpl	%ecx, %eax
	jge	.LBB17_110
# BB#49:                                #   in Loop: Header=BB17_48 Depth=1
	movl	$2293810, %edi          # imm = 0x230032
	callq	enqueue_signature
	movl	$7, -48(%rbp)
.LBB17_50:                              #   Parent Loop BB17_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2293811, %edi          # imm = 0x230033
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	$7, %ecx
	cmpl	%ecx, %eax
	jge	.LBB17_108
# BB#51:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293812, %edi          # imm = 0x230034
	callq	enqueue_signature
	movq	-88(%rbp), %rax
	movl	-52(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jle	.LBB17_106
# BB#52:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293813, %edi          # imm = 0x230035
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$3, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#53:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293814, %edi          # imm = 0x230036
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$3, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#54:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293815, %edi          # imm = 0x230037
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$3, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#55:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293816, %edi          # imm = 0x230038
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$3, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#56:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293817, %edi          # imm = 0x230039
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$3, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#57:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293818, %edi          # imm = 0x23003A
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$3, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#58:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293819, %edi          # imm = 0x23003B
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$3, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#59:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293820, %edi          # imm = 0x23003C
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$2, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#60:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293821, %edi          # imm = 0x23003D
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$2, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#61:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293822, %edi          # imm = 0x23003E
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$2, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#62:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293823, %edi          # imm = 0x23003F
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$2, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#63:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293824, %edi          # imm = 0x230040
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$2, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#64:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293825, %edi          # imm = 0x230041
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$2, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#65:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293826, %edi          # imm = 0x230042
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$2, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#66:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293827, %edi          # imm = 0x230043
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$1, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#67:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293828, %edi          # imm = 0x230044
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$1, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#68:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293829, %edi          # imm = 0x230045
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$1, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#69:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293830, %edi          # imm = 0x230046
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$1, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#70:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293831, %edi          # imm = 0x230047
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$1, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#71:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293832, %edi          # imm = 0x230048
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$1, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#72:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293833, %edi          # imm = 0x230049
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	subl	$1, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#73:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293834, %edi          # imm = 0x23004A
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#74:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293835, %edi          # imm = 0x23004B
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#75:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293836, %edi          # imm = 0x23004C
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_105
# BB#76:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293837, %edi          # imm = 0x23004D
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#77:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293838, %edi          # imm = 0x23004E
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#78:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293839, %edi          # imm = 0x23004F
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#79:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293840, %edi          # imm = 0x230050
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$1, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#80:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293841, %edi          # imm = 0x230051
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$1, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#81:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293842, %edi          # imm = 0x230052
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$1, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#82:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293843, %edi          # imm = 0x230053
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$1, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#83:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293844, %edi          # imm = 0x230054
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$1, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#84:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293845, %edi          # imm = 0x230055
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$1, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#85:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293846, %edi          # imm = 0x230056
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$1, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#86:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293847, %edi          # imm = 0x230057
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$2, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#87:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293848, %edi          # imm = 0x230058
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$2, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#88:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293849, %edi          # imm = 0x230059
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$2, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#89:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293850, %edi          # imm = 0x23005A
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$2, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#90:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293851, %edi          # imm = 0x23005B
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$2, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#91:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293852, %edi          # imm = 0x23005C
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$2, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#92:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293853, %edi          # imm = 0x23005D
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$2, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#93:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293854, %edi          # imm = 0x23005E
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$3, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#94:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293855, %edi          # imm = 0x23005F
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$3, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#95:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293856, %edi          # imm = 0x230060
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$3, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#96:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293857, %edi          # imm = 0x230061
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$3, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#97:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293858, %edi          # imm = 0x230062
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$3, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#98:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293859, %edi          # imm = 0x230063
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$3, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#99:                                #   in Loop: Header=BB17_50 Depth=2
	movl	$2293860, %edi          # imm = 0x230064
	callq	enqueue_signature
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	-52(%rbp), %edx
	addl	$3, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_105
# BB#100:                               #   in Loop: Header=BB17_50 Depth=2
	movl	$2293861, %edi          # imm = 0x230065
	callq	enqueue_signature
	movl	$15, %ecx
	movl	$25, %esi
	movq	-120(%rbp), %rax
	movslq	-56(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rax, %rdx
	movl	$0, 8(%rdx)
	movl	-48(%rbp), %eax
	movq	-120(%rbp), %rdx
	movslq	-56(%rbp), %rdi
	imulq	$24, %rdi, %rdi
	addq	%rdx, %rdi
	movl	%eax, (%rdi)
	movl	-52(%rbp), %eax
	movq	-120(%rbp), %rdx
	movslq	-56(%rbp), %rdi
	imulq	$24, %rdi, %rdi
	addq	%rdx, %rdi
	movl	%eax, 4(%rdi)
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	subl	$2, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	movzbl	(%rax,%rdx), %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	subl	$2, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edi
	subl	$2, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	movslq	%edi, %rdi
	movzbl	(%rax,%rdi), %eax
	addl	%edx, %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	subl	$2, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edi
	subl	$2, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	addl	$2, %edi
	movslq	%edi, %rdi
	movzbl	(%rax,%rdi), %eax
	addl	%edx, %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	subl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	subl	$2, %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edi
	subl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %rdi
	movzbl	(%rax,%rdi), %eax
	addl	%edx, %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	subl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edi
	subl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	movzbl	(%rax,%rdi), %eax
	addl	%edx, %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	subl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	addl	$2, %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	subl	$2, %edi
	movslq	%edi, %rdi
	movzbl	(%rax,%rdi), %eax
	addl	%edx, %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	movslq	%edi, %rdi
	movzbl	(%rax,%rdi), %eax
	addl	%edx, %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	addl	$2, %edi
	movslq	%edi, %rdi
	movzbl	(%rax,%rdi), %eax
	addl	%edx, %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	addl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	subl	$2, %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edi
	addl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %rdi
	movzbl	(%rax,%rdi), %eax
	addl	%edx, %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	addl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edi
	addl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	movzbl	(%rax,%rdi), %eax
	addl	%edx, %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	addl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	addl	$2, %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edi
	addl	$2, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	subl	$2, %edi
	movslq	%edi, %rdi
	movzbl	(%rax,%rdi), %eax
	addl	%edx, %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	addl	$2, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edi
	addl	$2, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	movslq	%edi, %rdi
	movzbl	(%rax,%rdi), %eax
	addl	%edx, %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	addl	$2, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edi
	addl	$2, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	addl	$2, %edi
	movslq	%edi, %rdi
	movzbl	(%rax,%rdi), %eax
	addl	%edx, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cltd
	idivl	%esi
	movq	-120(%rbp), %rdx
	movslq	-56(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	addq	%rdx, %rsi
	movl	%eax, 20(%rsi)
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	subl	$2, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	movzbl	(%rax,%rdx), %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %esi
	subl	$1, %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %esi
	addl	$1, %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %esi
	addl	$2, %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %esi
	subl	$2, %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	subl	$2, %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	movq	-80(%rbp), %rsi
	movl	-52(%rbp), %edi
	subl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	subl	$2, %edi
	movslq	%edi, %rdi
	movzbl	(%rsi,%rdi), %esi
	addl	%edx, %esi
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	subl	$2, %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%esi, %edx
	movq	-80(%rbp), %rsi
	movl	-52(%rbp), %edi
	addl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	subl	$2, %edi
	movslq	%edi, %rdi
	movzbl	(%rsi,%rdi), %esi
	addl	%edx, %esi
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	addl	$2, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	subl	$2, %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%esi, %edx
	subl	%edx, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %esi
	subl	$2, %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %esi
	subl	$1, %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %esi
	addl	$1, %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rsi
	movzbl	(%rax,%rsi), %esi
	addl	%edx, %esi
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	addl	$2, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movzbl	(%rax,%rdx), %eax
	addl	%esi, %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %esi
	subl	$2, %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	movq	-80(%rbp), %rsi
	movl	-52(%rbp), %edi
	subl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %rdi
	movzbl	(%rsi,%rdi), %esi
	addl	%edx, %esi
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%esi, %edx
	movq	-80(%rbp), %rsi
	movl	-52(%rbp), %edi
	addl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %rdi
	movzbl	(%rsi,%rdi), %esi
	addl	%edx, %esi
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	addl	$2, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%esi, %edx
	subl	%edx, %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	addl	$2, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	movzbl	(%rax,%rdx), %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %esi
	addl	$2, %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %esi
	addl	$2, %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	movslq	%esi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %esi
	addl	$2, %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %esi
	addl	$2, %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %esi
	subl	$2, %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	subl	$2, %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	movq	-80(%rbp), %rsi
	movl	-52(%rbp), %edi
	subl	$2, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %rdi
	movzbl	(%rsi,%rdi), %esi
	addl	%edx, %esi
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	subl	$2, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%esi, %edx
	movq	-80(%rbp), %rsi
	movl	-52(%rbp), %edi
	subl	$2, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	movzbl	(%rsi,%rdi), %esi
	addl	%edx, %esi
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	subl	$2, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	addl	$2, %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%esi, %edx
	subl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %esi
	addl	$1, %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	subl	$2, %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %esi
	addl	$1, %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %esi
	addl	$1, %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %esi
	addl	$1, %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rsi
	movzbl	(%rax,%rsi), %esi
	addl	%edx, %esi
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	addl	$1, %edx
	imull	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	movzbl	(%rax,%rdx), %eax
	addl	%esi, %eax
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %esi
	subl	$1, %esi
	imull	-44(%rbp), %esi
	addl	-48(%rbp), %esi
	subl	$2, %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	movq	-80(%rbp), %rsi
	movl	-52(%rbp), %edi
	subl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %rdi
	movzbl	(%rsi,%rdi), %esi
	addl	%edx, %esi
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	subl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%esi, %edx
	movq	-80(%rbp), %rsi
	movl	-52(%rbp), %edi
	subl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	movzbl	(%rsi,%rdi), %esi
	addl	%edx, %esi
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %edi
	subl	$1, %edi
	imull	-44(%rbp), %edi
	addl	-48(%rbp), %edi
	addl	$2, %edi
	movslq	%edi, %rdi
	movzbl	(%rdx,%rdi), %edx
	addl	%esi, %edx
	subl	%edx, %eax
	addl	-108(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-60(%rbp), %eax
	cltd
	idivl	%ecx
	movq	-120(%rbp), %rdx
	movslq	-56(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	addq	%rdx, %rsi
	movl	%eax, 12(%rsi)
	movl	-108(%rbp), %eax
	cltd
	idivl	%ecx
	movq	-120(%rbp), %rcx
	movslq	-56(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rcx, %rdx
	movl	%eax, 16(%rdx)
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	cmpl	$15000, -56(%rbp)       # imm = 0x3A98
	jne	.LBB17_104
# BB#101:
	movl	$2293862, %edi          # imm = 0x230066
	callq	enqueue_signature
	movabsq	$.L.str.29, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
# BB#102:
	movl	$2293863, %edi          # imm = 0x230067
	callq	enqueue_signature
	movl	$1, %edi
	callq	exit
# BB#103:
	movl	$2293864, %edi          # imm = 0x230068
	callq	enqueue_signature_with_return
.LBB17_104:                             #   in Loop: Header=BB17_50 Depth=2
	movl	$2293865, %edi          # imm = 0x230069
	callq	enqueue_signature
.LBB17_105:                             #   in Loop: Header=BB17_50 Depth=2
	movl	$2293866, %edi          # imm = 0x23006A
	callq	enqueue_signature
.LBB17_106:                             #   in Loop: Header=BB17_50 Depth=2
	movl	$2293867, %edi          # imm = 0x23006B
	callq	enqueue_signature
# BB#107:                               #   in Loop: Header=BB17_50 Depth=2
	movl	$2293868, %edi          # imm = 0x23006C
	callq	enqueue_signature
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB17_50
.LBB17_108:                             #   in Loop: Header=BB17_48 Depth=1
	movl	$2293869, %edi          # imm = 0x23006D
	callq	enqueue_signature
# BB#109:                               #   in Loop: Header=BB17_48 Depth=1
	movl	$2293870, %edi          # imm = 0x23006E
	callq	enqueue_signature
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB17_48
.LBB17_110:
	movl	$2293871, %edi          # imm = 0x23006F
	callq	enqueue_signature_with_return
	movq	-120(%rbp), %rax
	movslq	-56(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rax, %rcx
	movl	$7, 8(%rcx)
	movl	-140(%rbp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	susan_corners_quick, .Lfunc_end17-susan_corners_quick
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI18_0:
	.long	1082130432              # float 4
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi126:
	.cfi_def_cfa_offset 16
.Lcfi127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi128:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$360288, %rsp           # imm = 0x57F60
.Lcfi129:
	.cfi_offset %rbx, -32
.Lcfi130:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movl	%edi, %ebx
	callq	init_monitor
	movl	$2359297, %edi          # imm = 0x240001
	callq	enqueue_signature
	leaq	-184(%rbp), %rdi
	movss	.LCPI18_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movl	$0, -140(%rbp)
	movl	%ebx, -88(%rbp)
	movq	%r14, -120(%rbp)
	movss	%xmm0, -100(%rbp)
	movl	$3, -28(%rbp)
	movl	$20, -84(%rbp)
	movl	$0, -80(%rbp)
	movl	$1, -128(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -124(%rbp)
	movl	$1850, -92(%rbp)        # imm = 0x73A
	movl	$2650, -76(%rbp)        # imm = 0xA5A
	movl	$0, -44(%rbp)
	xorl	%esi, %esi
	movb	$0, %al
	callq	gettimeofday
# BB#1:
	movl	$2359298, %edi          # imm = 0x240002
	callq	enqueue_signature
	cmpl	$3, -88(%rbp)
	jge	.LBB18_3
# BB#2:
	movl	$2359299, %edi          # imm = 0x240003
	callq	enqueue_signature_with_call
	callq	usage
.LBB18_3:
	movl	$2359300, %edi          # imm = 0x240004
	callq	enqueue_signature_with_call
	leaq	-40(%rbp), %rsi
	leaq	-20(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rdi
	callq	get_image
.LBB18_4:                               # =>This Inner Loop Header: Depth=1
	movl	$2359301, %edi          # imm = 0x240005
	callq	enqueue_signature
	movl	-28(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB18_33
# BB#5:                                 #   in Loop: Header=BB18_4 Depth=1
	movl	$2359302, %edi          # imm = 0x240006
	callq	enqueue_signature
	movq	-120(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$45, %eax
	jne	.LBB18_31
# BB#6:                                 #   in Loop: Header=BB18_4 Depth=1
	movl	$2359303, %edi          # imm = 0x240007
	callq	enqueue_signature_with_return
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -136(%rbp)
	movsbl	1(%rax), %eax
	addl	$-51, %eax
	movl	%eax, %ecx
	subl	$65, %ecx
	ja	.LBB18_30
# BB#7:                                 #   in Loop: Header=BB18_4 Depth=1
	movq	.LJTI18_0(,%rax,8), %rax
	jmpq	*%rax
.LBB18_8:                               #   in Loop: Header=BB18_4 Depth=1
	movl	$2359304, %edi          # imm = 0x240008
	callq	enqueue_signature
	movl	$0, -44(%rbp)
	jmp	.LBB18_30
.LBB18_9:                               #   in Loop: Header=BB18_4 Depth=1
	movl	$2359305, %edi          # imm = 0x240009
	callq	enqueue_signature
	movl	$1, -44(%rbp)
	jmp	.LBB18_30
.LBB18_10:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$2359306, %edi          # imm = 0x24000A
	callq	enqueue_signature
	movl	$2, -44(%rbp)
	jmp	.LBB18_30
.LBB18_11:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$2359307, %edi          # imm = 0x24000B
	callq	enqueue_signature
	movl	$1, -80(%rbp)
	jmp	.LBB18_30
.LBB18_12:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$2359308, %edi          # imm = 0x24000C
	callq	enqueue_signature
	movl	$0, -128(%rbp)
	jmp	.LBB18_30
.LBB18_13:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$2359309, %edi          # imm = 0x24000D
	callq	enqueue_signature
	movl	$1, -96(%rbp)
	jmp	.LBB18_30
.LBB18_14:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$2359310, %edi          # imm = 0x24000E
	callq	enqueue_signature
	movl	$1, -60(%rbp)
	jmp	.LBB18_30
.LBB18_15:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$2359311, %edi          # imm = 0x24000F
	callq	enqueue_signature
	movl	$1, -124(%rbp)
	jmp	.LBB18_30
.LBB18_16:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$2359312, %edi          # imm = 0x240010
	callq	enqueue_signature
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	cmpl	-88(%rbp), %eax
	jl	.LBB18_20
# BB#17:
	movl	$2359313, %edi          # imm = 0x240011
	callq	enqueue_signature
	movabsq	$.L.str.30, %rdi
	movb	$0, %al
	callq	printf
# BB#18:
	movl	$2359314, %edi          # imm = 0x240012
	callq	enqueue_signature
	xorl	%edi, %edi
	callq	exit
# BB#19:
	movl	$2359315, %edi          # imm = 0x240013
	callq	enqueue_signature_with_return
.LBB18_20:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$2359316, %edi          # imm = 0x240014
	callq	enqueue_signature
	movq	-120(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	atof
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
# BB#21:                                #   in Loop: Header=BB18_4 Depth=1
	movl	$2359317, %edi          # imm = 0x240015
	callq	enqueue_signature
	xorps	%xmm0, %xmm0
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -100(%rbp)
	ucomiss	-100(%rbp), %xmm0
	jbe	.LBB18_23
# BB#22:                                #   in Loop: Header=BB18_4 Depth=1
	movl	$2359318, %edi          # imm = 0x240016
	callq	enqueue_signature
	movl	$1, -60(%rbp)
.LBB18_23:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$2359319, %edi          # imm = 0x240017
	callq	enqueue_signature
	jmp	.LBB18_30
.LBB18_24:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$2359320, %edi          # imm = 0x240018
	callq	enqueue_signature
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	cmpl	-88(%rbp), %eax
	jl	.LBB18_28
# BB#25:
	movl	$2359321, %edi          # imm = 0x240019
	callq	enqueue_signature
	movabsq	$.L.str.31, %rdi
	movb	$0, %al
	callq	printf
# BB#26:
	movl	$2359322, %edi          # imm = 0x24001A
	callq	enqueue_signature
	xorl	%edi, %edi
	callq	exit
# BB#27:
	movl	$2359323, %edi          # imm = 0x24001B
	callq	enqueue_signature_with_return
.LBB18_28:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$2359324, %edi          # imm = 0x24001C
	callq	enqueue_signature
	movq	-120(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	atoi
	movl	%eax, %ebx
# BB#29:                                #   in Loop: Header=BB18_4 Depth=1
	movl	$2359325, %edi          # imm = 0x24001D
	callq	enqueue_signature
	movl	%ebx, -84(%rbp)
.LBB18_30:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$2359326, %edi          # imm = 0x24001E
	callq	enqueue_signature
	jmp	.LBB18_32
.LBB18_31:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$2359327, %edi          # imm = 0x24001F
	callq	enqueue_signature_with_call
	callq	usage
.LBB18_32:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$2359328, %edi          # imm = 0x240020
	callq	enqueue_signature
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB18_4
.LBB18_33:
	movl	$2359329, %edi          # imm = 0x240021
	callq	enqueue_signature
	cmpl	$1, -80(%rbp)
	jne	.LBB18_36
# BB#34:
	movl	$2359330, %edi          # imm = 0x240022
	callq	enqueue_signature
	cmpl	$0, -44(%rbp)
	jne	.LBB18_36
# BB#35:
	movl	$2359331, %edi          # imm = 0x240023
	callq	enqueue_signature
	movl	$1, -44(%rbp)
.LBB18_36:
	movl	$2359332, %edi          # imm = 0x240024
	callq	enqueue_signature_with_return
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	je	.LBB18_39
	jmp	.LBB18_37
.LBB18_37:
	movl	%eax, %ecx
	subl	$1, %ecx
	je	.LBB18_41
	jmp	.LBB18_38
.LBB18_38:
	subl	$2, %eax
	je	.LBB18_57
	jmp	.LBB18_67
.LBB18_39:
	movl	$2359333, %edi          # imm = 0x240025
	callq	enqueue_signature_with_call
	leaq	-72(%rbp), %rdi
	movl	-84(%rbp), %esi
	movl	$2, %edx
	callq	setup_brightness_lut
# BB#40:
	movl	$2359334, %edi          # imm = 0x240026
	callq	enqueue_signature_with_call
	movl	-60(%rbp), %edi
	movq	-40(%rbp), %rsi
	cvtss2sd	-100(%rbp), %xmm0
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-72(%rbp), %r8
	callq	susan_smoothing
	jmp	.LBB18_67
.LBB18_41:
	movl	$2359335, %edi          # imm = 0x240027
	callq	enqueue_signature
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	movslq	%eax, %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
# BB#42:
	movl	$2359336, %edi          # imm = 0x240028
	callq	enqueue_signature_with_call
	leaq	-72(%rbp), %rdi
	movq	%rbx, -56(%rbp)
	movl	-84(%rbp), %esi
	movl	$6, %edx
	callq	setup_brightness_lut
# BB#43:
	movl	$2359337, %edi          # imm = 0x240029
	callq	enqueue_signature
	cmpl	$0, -80(%rbp)
	je	.LBB18_48
# BB#44:
	movl	$2359338, %edi          # imm = 0x24002A
	callq	enqueue_signature
	cmpl	$0, -60(%rbp)
	je	.LBB18_46
# BB#45:
	movl	$2359339, %edi          # imm = 0x24002B
	callq	enqueue_signature_with_call
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movl	-76(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	callq	susan_principle_small
	jmp	.LBB18_47
.LBB18_46:
	movl	$2359340, %edi          # imm = 0x24002C
	callq	enqueue_signature_with_call
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movl	-76(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	callq	susan_principle
.LBB18_47:
	movl	$2359341, %edi          # imm = 0x24002D
	callq	enqueue_signature_with_call
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %edx
	imull	-24(%rbp), %edx
	callq	int_to_uchar
	jmp	.LBB18_56
.LBB18_48:
	movl	$2359342, %edi          # imm = 0x24002E
	callq	enqueue_signature
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, %rbx
# BB#49:
	movl	$2359343, %edi          # imm = 0x24002F
	callq	enqueue_signature
	movq	%rbx, -112(%rbp)
	movq	-112(%rbp), %rdi
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	$100, %esi
	callq	memset
# BB#50:
	movl	$2359344, %edi          # imm = 0x240030
	callq	enqueue_signature
	cmpl	$0, -60(%rbp)
	je	.LBB18_52
# BB#51:
	movl	$2359345, %edi          # imm = 0x240031
	callq	enqueue_signature_with_call
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movl	-76(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %eax
	movl	%eax, (%rsp)
	callq	susan_edges_small
	jmp	.LBB18_53
.LBB18_52:
	movl	$2359346, %edi          # imm = 0x240032
	callq	enqueue_signature_with_call
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movl	-76(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %eax
	movl	%eax, (%rsp)
	callq	susan_edges
.LBB18_53:
	movl	$2359347, %edi          # imm = 0x240033
	callq	enqueue_signature
	cmpl	$0, -128(%rbp)
	je	.LBB18_55
# BB#54:
	movl	$2359348, %edi          # imm = 0x240034
	callq	enqueue_signature_with_call
	movq	-56(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	susan_thin
.LBB18_55:
	movl	$2359349, %edi          # imm = 0x240035
	callq	enqueue_signature_with_call
	movq	-40(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-96(%rbp), %r8d
	callq	edge_draw
.LBB18_56:
	movl	$2359350, %edi          # imm = 0x240036
	callq	enqueue_signature
	jmp	.LBB18_67
.LBB18_57:
	movl	$2359351, %edi          # imm = 0x240037
	callq	enqueue_signature
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	movslq	%eax, %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
# BB#58:
	movl	$2359352, %edi          # imm = 0x240038
	callq	enqueue_signature_with_call
	leaq	-72(%rbp), %rdi
	movq	%rbx, -56(%rbp)
	movl	-84(%rbp), %esi
	movl	$6, %edx
	callq	setup_brightness_lut
# BB#59:
	movl	$2359353, %edi          # imm = 0x240039
	callq	enqueue_signature
	cmpl	$0, -80(%rbp)
	je	.LBB18_62
# BB#60:
	movl	$2359354, %edi          # imm = 0x24003A
	callq	enqueue_signature_with_call
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movl	-92(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	callq	susan_principle
# BB#61:
	movl	$2359355, %edi          # imm = 0x24003B
	callq	enqueue_signature_with_call
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %edx
	imull	-24(%rbp), %edx
	callq	int_to_uchar
	jmp	.LBB18_66
.LBB18_62:
	movl	$2359356, %edi          # imm = 0x24003C
	callq	enqueue_signature
	cmpl	$0, -124(%rbp)
	je	.LBB18_64
# BB#63:
	movl	$2359357, %edi          # imm = 0x24003D
	callq	enqueue_signature_with_call
	leaq	-360192(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movl	-92(%rbp), %ecx
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %eax
	movl	%eax, (%rsp)
	callq	susan_corners_quick
	jmp	.LBB18_65
.LBB18_64:
	movl	$2359358, %edi          # imm = 0x24003E
	callq	enqueue_signature_with_call
	leaq	-360192(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movl	-92(%rbp), %ecx
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %eax
	movl	%eax, (%rsp)
	callq	susan_corners
.LBB18_65:
	movl	$2359359, %edi          # imm = 0x24003F
	callq	enqueue_signature_with_call
	leaq	-360192(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-96(%rbp), %ecx
	callq	corner_draw
.LBB18_66:
	movl	$2359360, %edi          # imm = 0x240040
	callq	enqueue_signature
.LBB18_67:
	movl	$2359361, %edi          # imm = 0x240041
	callq	enqueue_signature_with_call
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	put_image
# BB#68:
	movl	$2359362, %edi          # imm = 0x240042
	callq	enqueue_signature
	movabsq	$.L.str.32, %rdi
	movb	$0, %al
	callq	printf
# BB#69:
	movl	$2359363, %edi          # imm = 0x240043
	callq	enqueue_signature
	leaq	-168(%rbp), %rdi
	xorl	%esi, %esi
	movb	$0, %al
	callq	gettimeofday
# BB#70:
	movl	$2359364, %edi          # imm = 0x240044
	callq	enqueue_signature
	movabsq	$.L.str.33, %rdi
	movq	-168(%rbp), %rax
	subq	-184(%rbp), %rax
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	movq	-160(%rbp), %rsi
	subq	-176(%rbp), %rsi
	addq	%rax, %rsi
	movb	$0, %al
	callq	printf
# BB#71:
	movl	$2359365, %edi          # imm = 0x240045
	callq	enqueue_signature_with_remainder_process
	movl	$1, is_signature_queue_full
	movl	-140(%rbp), %eax
	addq	$360288, %rsp           # imm = 0x57F60
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end18:
	.size	main, .Lfunc_end18-main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI18_0:
	.quad	.LBB18_14
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_13
	.quad	.LBB18_10
	.quad	.LBB18_16
	.quad	.LBB18_9
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_30
	.quad	.LBB18_12
	.quad	.LBB18_30
	.quad	.LBB18_11
	.quad	.LBB18_15
	.quad	.LBB18_30
	.quad	.LBB18_8
	.quad	.LBB18_24
                                        # -- End function
	.text
	.globl	CallcheckerSet          # -- Begin function CallcheckerSet
	.p2align	4, 0x90
	.type	CallcheckerSet,@function
CallcheckerSet:                         # @CallcheckerSet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi131:
	.cfi_def_cfa_offset 16
	callq	init_monitor
	movl	$1, %edi
	callq	enqueue_signature
	movl	$1, %edi
	callq	enqueue_signature_with_call
	movl	$1, %edi
	callq	enqueue_signature_with_return
	movl	$1, %edi
	callq	enqueue_signature_with_remainder_process
	popq	%rax
	retq
.Lfunc_end19:
	.size	CallcheckerSet, .Lfunc_end19-CallcheckerSet
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: susan <in.pgm> <out.pgm> [options]\n\n"
	.size	.L.str, 44

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"-s : Smoothing mode (default)\n"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"-e : Edges mode\n"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"-c : Corners mode\n\n"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"See source code for more information about setting the thresholds\n"
	.size	.L.str.4, 67

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"-t <thresh> : Brightness threshold, all modes (default=20)\n"
	.size	.L.str.5, 60

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"-d <thresh> : Distance threshold, smoothing mode, (default=4) (use next option instead for flat 3x3 mask)\n"
	.size	.L.str.6, 107

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"-3 : Use flat 3x3 mask, edges or smoothing mode\n"
	.size	.L.str.7, 49

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"-n : No post-processing on the binary edge map (runs much faster); edges mode\n"
	.size	.L.str.8, 79

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"-q : Use faster (and usually stabler) corner mode; edge-like corner suppression not carried out; corners mode\n"
	.size	.L.str.9, 111

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"-b : Mark corners/edges with single black points instead of black with white border; corners or edges mode\n"
	.size	.L.str.10, 108

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"-p : Output initial enhancement image only; corners or edges mode (default is edges mode)\n"
	.size	.L.str.11, 91

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\nSUSAN Version 2l (C) 1995-1997 Stephen Smith, DRA UK. steve@fmrib.ox.ac.uk\n"
	.size	.L.str.12, 77

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Image %s not binary PGM.\n"
	.size	.L.str.13, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"is"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"r"
	.size	.L.str.15, 2

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Can't input image %s.\n"
	.size	.L.str.16, 23

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Image %s does not have binary PGM header.\n"
	.size	.L.str.17, 43

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Image %s is wrong size.\n"
	.size	.L.str.18, 25

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"w"
	.size	.L.str.19, 2

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Can't output image%s.\n"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"P5\n"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%d %d\n"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"255\n"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Can't write image %s.\n"
	.size	.L.str.24, 23

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Distance_thresh (%f) too big for integer arithmetic.\n"
	.size	.L.str.25, 54

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Either reduce it to <=15 or recompile with variable \"total\"\n"
	.size	.L.str.26, 61

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"as a float: see top \"defines\" section.\n"
	.size	.L.str.27, 40

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Mask size (1.5*distance_thresh+1=%d) too big for image (%dx%d).\n"
	.size	.L.str.28, 65

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Too many corners.\n"
	.size	.L.str.29, 19

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"No argument following -d\n"
	.size	.L.str.30, 26

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"No argument following -t\n"
	.size	.L.str.31, 26

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	" [target finished!]\n"
	.size	.L.str.32, 21

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	" [target] Execution Time: %ld\n"
	.size	.L.str.33, 31


	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.section	".note.GNU-stack","",@progbits
