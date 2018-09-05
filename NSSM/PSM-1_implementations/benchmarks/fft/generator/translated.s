	.text
	.file	"llvm-link"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
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
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Lcfi3:
	.cfi_offset %rbx, -32
.Lcfi4:
	.cfi_offset %r14, -24
	movabsq	$main_signature, %rdi
	movl	$65537, %esi            # imm = 0x10001
	callq	update_signature
	leaq	-136(%rbp), %rdi
	movl	$0, -88(%rbp)
	movl	$0, -84(%rbp)
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_signature, %rdi
	movl	$65537, %esi            # imm = 0x10001
	callq	verify_signature
# BB#1:
	movabsq	$main_signature, %rdi
	movl	$65538, %esi            # imm = 0x10002
	callq	update_signature
	movl	$8, -32(%rbp)
	movl	$32768, -24(%rbp)       # imm = 0x8000
	movl	$1, %edi
	callq	srand
	movabsq	$main_signature, %rdi
	movl	$65538, %esi            # imm = 0x10002
	callq	verify_signature
# BB#2:
	movabsq	$main_signature, %rdi
	movl	$65539, %esi            # imm = 0x10003
	callq	update_signature
	movl	-24(%rbp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_signature, %rdi
	movl	$65539, %esi            # imm = 0x10003
	callq	verify_signature
# BB#3:
	movabsq	$main_signature, %rdi
	movl	$65540, %esi            # imm = 0x10004
	callq	update_signature
	movq	%rbx, -40(%rbp)
	movl	-24(%rbp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_signature, %rdi
	movl	$65540, %esi            # imm = 0x10004
	callq	verify_signature
# BB#4:
	movabsq	$main_signature, %rdi
	movl	$65541, %esi            # imm = 0x10005
	callq	update_signature
	movq	%rbx, -80(%rbp)
	movl	-24(%rbp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_signature, %rdi
	movl	$65541, %esi            # imm = 0x10005
	callq	verify_signature
# BB#5:
	movabsq	$main_signature, %rdi
	movl	$65542, %esi            # imm = 0x10006
	callq	update_signature
	movq	%rbx, -104(%rbp)
	movl	-24(%rbp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_signature, %rdi
	movl	$65542, %esi            # imm = 0x10006
	callq	verify_signature
# BB#6:
	movabsq	$main_signature, %rdi
	movl	$65543, %esi            # imm = 0x10007
	callq	update_signature
	movq	%rbx, -96(%rbp)
	movl	-32(%rbp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_signature, %rdi
	movl	$65543, %esi            # imm = 0x10007
	callq	verify_signature
# BB#7:
	movabsq	$main_signature, %rdi
	movl	$65544, %esi            # imm = 0x10008
	callq	update_signature
	movq	%rbx, -56(%rbp)
	movl	-32(%rbp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
	movabsq	$main_signature, %rdi
	movl	$65544, %esi            # imm = 0x10008
	callq	verify_signature
# BB#8:
	movabsq	$main_signature, %rdi
	movl	$65545, %esi            # imm = 0x10009
	callq	update_signature
	movabsq	$main_signature, %rdi
	movq	%rbx, -48(%rbp)
	movl	$0, -20(%rbp)
	movl	$65545, %esi            # imm = 0x10009
	callq	verify_signature
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movabsq	$main_signature, %rdi
	movl	$65546, %esi            # imm = 0x1000A
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %r14d
	movl	-32(%rbp), %ebx
	movl	$65546, %esi            # imm = 0x1000A
	callq	verify_signature
	cmpl	%ebx, %r14d
	jae	.LBB0_14
# BB#10:                                #   in Loop: Header=BB0_9 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65547, %esi            # imm = 0x1000B
	callq	update_signature
	callq	rand
	movl	%eax, %ebx
	movabsq	$main_signature, %rdi
	movl	$65547, %esi            # imm = 0x1000B
	callq	verify_signature
# BB#11:                                #   in Loop: Header=BB0_9 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65548, %esi            # imm = 0x1000C
	callq	update_signature
	movl	$1000, %ecx             # imm = 0x3E8
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	cvtsi2ssl	%edx, %xmm0
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	callq	rand
	movl	%eax, %ebx
	movabsq	$main_signature, %rdi
	movl	$65548, %esi            # imm = 0x1000C
	callq	verify_signature
# BB#12:                                #   in Loop: Header=BB0_9 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65549, %esi            # imm = 0x1000D
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$1000, %ecx             # imm = 0x3E8
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	cvtsi2ssl	%edx, %xmm0
	movq	-48(%rbp), %rax
	movl	-20(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	movl	$65549, %esi            # imm = 0x1000D
	callq	verify_signature
# BB#13:                                #   in Loop: Header=BB0_9 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65550, %esi            # imm = 0x1000E
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$65550, %esi            # imm = 0x1000E
	callq	verify_signature
	jmp	.LBB0_9
.LBB0_14:
	movabsq	$main_signature, %rdi
	movl	$65551, %esi            # imm = 0x1000F
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$0, -20(%rbp)
	movl	$65551, %esi            # imm = 0x1000F
	callq	verify_signature
.LBB0_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
	movabsq	$main_signature, %rdi
	movl	$65552, %esi            # imm = 0x10010
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %r14d
	movl	-24(%rbp), %ebx
	movl	$65552, %esi            # imm = 0x10010
	callq	verify_signature
	cmpl	%ebx, %r14d
	jae	.LBB0_28
# BB#16:                                #   in Loop: Header=BB0_15 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65553, %esi            # imm = 0x10011
	callq	update_signature
	movabsq	$main_signature, %rdi
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	movl	$0, -28(%rbp)
	movl	$65553, %esi            # imm = 0x10011
	callq	verify_signature
.LBB0_17:                               #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$main_signature, %rdi
	movl	$65554, %esi            # imm = 0x10012
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-28(%rbp), %r14d
	movl	-32(%rbp), %ebx
	movl	$65554, %esi            # imm = 0x10012
	callq	verify_signature
	cmpl	%ebx, %r14d
	jae	.LBB0_26
# BB#18:                                #   in Loop: Header=BB0_17 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65555, %esi            # imm = 0x10013
	callq	update_signature
	callq	rand
	movl	%eax, %ebx
	movabsq	$main_signature, %rdi
	movl	$65555, %esi            # imm = 0x10013
	callq	verify_signature
# BB#19:                                #   in Loop: Header=BB0_17 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65556, %esi            # imm = 0x10014
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$2, %ecx
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ebx
	movl	$65556, %esi            # imm = 0x10014
	callq	verify_signature
	cmpl	$0, %ebx
	je	.LBB0_22
# BB#20:                                #   in Loop: Header=BB0_17 Depth=2
	movabsq	$main_signature, %rbx
	movl	$main_signature, %edi
	movl	$65557, %esi            # imm = 0x10015
	callq	update_signature
	movq	-56(%rbp), %rax
	movl	-28(%rbp), %ecx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movl	-20(%rbp), %eax
	cvtsi2ssq	%rax, %xmm1
	mulss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	callq	cos
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$65557, %esi            # imm = 0x10015
	callq	verify_signature
# BB#21:                                #   in Loop: Header=BB0_17 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65558, %esi            # imm = 0x10016
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1        # 8-byte Folded Reload
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	$65558, %esi            # imm = 0x10016
	callq	verify_signature
	jmp	.LBB0_24
.LBB0_22:                               #   in Loop: Header=BB0_17 Depth=2
	movabsq	$main_signature, %rbx
	movl	$main_signature, %edi
	movl	$65559, %esi            # imm = 0x10017
	callq	update_signature
	movq	-56(%rbp), %rax
	movl	-28(%rbp), %ecx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movl	-20(%rbp), %eax
	cvtsi2ssq	%rax, %xmm1
	mulss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	callq	sin
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$65559, %esi            # imm = 0x10017
	callq	verify_signature
# BB#23:                                #   in Loop: Header=BB0_17 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65560, %esi            # imm = 0x10018
	callq	update_signature
	movabsq	$main_signature, %rdi
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1        # 8-byte Folded Reload
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	$65560, %esi            # imm = 0x10018
	callq	verify_signature
.LBB0_24:                               #   in Loop: Header=BB0_17 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65561, %esi            # imm = 0x10019
	callq	update_signature
	movabsq	$main_signature, %rdi
	xorps	%xmm0, %xmm0
	movq	-80(%rbp), %rax
	movl	-20(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	movl	$65561, %esi            # imm = 0x10019
	callq	verify_signature
# BB#25:                                #   in Loop: Header=BB0_17 Depth=2
	movabsq	$main_signature, %rdi
	movl	$65562, %esi            # imm = 0x1001A
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	$65562, %esi            # imm = 0x1001A
	callq	verify_signature
	jmp	.LBB0_17
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65563, %esi            # imm = 0x1001B
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	$65563, %esi            # imm = 0x1001B
	callq	verify_signature
# BB#27:                                #   in Loop: Header=BB0_15 Depth=1
	movabsq	$main_signature, %rdi
	movl	$65564, %esi            # imm = 0x1001C
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$65564, %esi            # imm = 0x1001C
	callq	verify_signature
	jmp	.LBB0_15
.LBB0_28:
	movabsq	$main_signature, %rdi
	movl	$65565, %esi            # imm = 0x1001D
	callq	update_signature
	movl	-24(%rbp), %edi
	movl	-84(%rbp), %esi
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-104(%rbp), %r8
	movq	-96(%rbp), %r9
	movb	$0, %al
	callq	fft_float
	movabsq	$main_signature, %rdi
	movl	$65565, %esi            # imm = 0x1001D
	callq	verify_signature
# BB#29:
	movabsq	$main_signature, %rdi
	movl	$65566, %esi            # imm = 0x1001E
	callq	update_signature
	movq	-40(%rbp), %rdi
	callq	free
	movabsq	$main_signature, %rdi
	movl	$65566, %esi            # imm = 0x1001E
	callq	verify_signature
# BB#30:
	movabsq	$main_signature, %rdi
	movl	$65567, %esi            # imm = 0x1001F
	callq	update_signature
	movq	-80(%rbp), %rdi
	callq	free
	movabsq	$main_signature, %rdi
	movl	$65567, %esi            # imm = 0x1001F
	callq	verify_signature
# BB#31:
	movabsq	$main_signature, %rdi
	movl	$65568, %esi            # imm = 0x10020
	callq	update_signature
	movq	-104(%rbp), %rdi
	callq	free
	movabsq	$main_signature, %rdi
	movl	$65568, %esi            # imm = 0x10020
	callq	verify_signature
# BB#32:
	movabsq	$main_signature, %rdi
	movl	$65569, %esi            # imm = 0x10021
	callq	update_signature
	movq	-96(%rbp), %rdi
	callq	free
	movabsq	$main_signature, %rdi
	movl	$65569, %esi            # imm = 0x10021
	callq	verify_signature
# BB#33:
	movabsq	$main_signature, %rdi
	movl	$65570, %esi            # imm = 0x10022
	callq	update_signature
	movq	-56(%rbp), %rdi
	callq	free
	movabsq	$main_signature, %rdi
	movl	$65570, %esi            # imm = 0x10022
	callq	verify_signature
# BB#34:
	movabsq	$main_signature, %rdi
	movl	$65571, %esi            # imm = 0x10023
	callq	update_signature
	movq	-48(%rbp), %rdi
	callq	free
	movabsq	$main_signature, %rdi
	movl	$65571, %esi            # imm = 0x10023
	callq	verify_signature
# BB#35:
	movabsq	$main_signature, %rdi
	movl	$65572, %esi            # imm = 0x10024
	callq	update_signature
	leaq	-120(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$main_signature, %rdi
	movl	$65572, %esi            # imm = 0x10024
	callq	verify_signature
# BB#36:
	movabsq	$main_signature, %rdi
	movl	$65573, %esi            # imm = 0x10025
	callq	update_signature
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$main_signature, %rdi
	movl	$65573, %esi            # imm = 0x10025
	callq	verify_signature
# BB#37:
	movabsq	$main_signature, %rdi
	movl	$65574, %esi            # imm = 0x10026
	callq	update_signature
	movabsq	$.L.str.1, %rdi
	movq	-120(%rbp), %rax
	subq	-136(%rbp), %rax
	imulq	$1000000, %rax, %rax    # imm = 0xF4240
	movq	-112(%rbp), %rsi
	subq	-128(%rbp), %rsi
	addq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movabsq	$main_signature, %rdi
	movl	$65574, %esi            # imm = 0x10026
	callq	verify_signature
# BB#38:
	movabsq	$main_signature, %rdi
	movl	$65575, %esi            # imm = 0x10027
	callq	update_signature
	movabsq	$main_signature, %rdi
	movl	-88(%rbp), %ebx
	movl	$65575, %esi            # imm = 0x10027
	callq	verify_signature
	movl	%ebx, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	IsPowerOfTwo            # -- Begin function IsPowerOfTwo
	.p2align	4, 0x90
	.type	IsPowerOfTwo,@function
IsPowerOfTwo:                           # @IsPowerOfTwo
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi5:
	.cfi_def_cfa_offset 16
.Lcfi6:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi7:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Lcfi8:
	.cfi_offset %rbx, -24
	movl	%edi, %ebx
	movabsq	$IsPowerOfTwo_signature, %rdi
	movl	$655361, %esi           # imm = 0xA0001
	callq	update_signature
	movabsq	$IsPowerOfTwo_signature, %rdi
	movl	%ebx, -12(%rbp)
	movl	-12(%rbp), %ebx
	movl	$655361, %esi           # imm = 0xA0001
	callq	verify_signature
	cmpl	$2, %ebx
	jae	.LBB1_2
# BB#1:
	movabsq	$IsPowerOfTwo_signature, %rdi
	movl	$655362, %esi           # imm = 0xA0002
	callq	update_signature
	movabsq	$IsPowerOfTwo_signature, %rdi
	movl	$0, -16(%rbp)
	movl	$655362, %esi           # imm = 0xA0002
	callq	verify_signature
	jmp	.LBB1_5
.LBB1_2:
	movabsq	$IsPowerOfTwo_signature, %rdi
	movl	$655363, %esi           # imm = 0xA0003
	callq	update_signature
	movabsq	$IsPowerOfTwo_signature, %rdi
	movl	-12(%rbp), %eax
	movl	-12(%rbp), %ebx
	subl	$1, %ebx
	andl	%eax, %ebx
	movl	$655363, %esi           # imm = 0xA0003
	callq	verify_signature
	cmpl	$0, %ebx
	je	.LBB1_4
# BB#3:
	movabsq	$IsPowerOfTwo_signature, %rdi
	movl	$655364, %esi           # imm = 0xA0004
	callq	update_signature
	movabsq	$IsPowerOfTwo_signature, %rdi
	movl	$0, -16(%rbp)
	movl	$655364, %esi           # imm = 0xA0004
	callq	verify_signature
	jmp	.LBB1_5
.LBB1_4:
	movabsq	$IsPowerOfTwo_signature, %rdi
	movl	$655365, %esi           # imm = 0xA0005
	callq	update_signature
	movabsq	$IsPowerOfTwo_signature, %rdi
	movl	$1, -16(%rbp)
	movl	$655365, %esi           # imm = 0xA0005
	callq	verify_signature
.LBB1_5:
	movabsq	$IsPowerOfTwo_signature, %rdi
	movl	$655366, %esi           # imm = 0xA0006
	callq	update_signature
	movabsq	$IsPowerOfTwo_signature, %rdi
	movl	-16(%rbp), %ebx
	movl	$655366, %esi           # imm = 0xA0006
	callq	verify_signature
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	IsPowerOfTwo, .Lfunc_end1-IsPowerOfTwo
	.cfi_endproc
                                        # -- End function
	.globl	NumberOfBitsNeeded      # -- Begin function NumberOfBitsNeeded
	.p2align	4, 0x90
	.type	NumberOfBitsNeeded,@function
NumberOfBitsNeeded:                     # @NumberOfBitsNeeded
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi9:
	.cfi_def_cfa_offset 16
.Lcfi10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi11:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
.Lcfi12:
	.cfi_offset %rbx, -24
	movl	%edi, %ebx
	movabsq	$NumberOfBitsNeeded_signature, %rdi
	movl	$720897, %esi           # imm = 0xB0001
	callq	update_signature
	movabsq	$NumberOfBitsNeeded_signature, %rdi
	movl	%ebx, -16(%rbp)
	movl	-16(%rbp), %ebx
	movl	$720897, %esi           # imm = 0xB0001
	callq	verify_signature
	cmpl	$2, %ebx
	jae	.LBB2_2
# BB#1:
	movabsq	$NumberOfBitsNeeded_signature, %rdi
	movl	$720898, %esi           # imm = 0xB0002
	callq	update_signature
	movabsq	$.L.str.2, %rsi
	movq	stderr, %rdi
	movl	-16(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	movabsq	$NumberOfBitsNeeded_signature, %rdi
	movl	$720898, %esi           # imm = 0xB0002
	callq	verify_signature
.LBB2_2:
	movabsq	$NumberOfBitsNeeded_signature, %rdi
	movl	$720899, %esi           # imm = 0xB0003
	callq	update_signature
	movabsq	$NumberOfBitsNeeded_signature, %rdi
	movl	$0, -12(%rbp)
	movl	$720899, %esi           # imm = 0xB0003
	callq	verify_signature
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movabsq	$NumberOfBitsNeeded_signature, %rdi
	movl	$720900, %esi           # imm = 0xB0004
	callq	update_signature
	movabsq	$NumberOfBitsNeeded_signature, %rdi
	movl	$1, %ebx
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
                                        # kill: %CL<def> %ECX<kill>
	shll	%cl, %ebx
	andl	%eax, %ebx
	movl	$720900, %esi           # imm = 0xB0004
	callq	verify_signature
	cmpl	$0, %ebx
	je	.LBB2_5
# BB#4:
	movabsq	$NumberOfBitsNeeded_signature, %rdi
	movl	$720901, %esi           # imm = 0xB0005
	callq	update_signature
	movabsq	$NumberOfBitsNeeded_signature, %rdi
	movl	-12(%rbp), %ebx
	movl	$720901, %esi           # imm = 0xB0005
	callq	verify_signature
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB2_5:                                #   in Loop: Header=BB2_3 Depth=1
	movabsq	$NumberOfBitsNeeded_signature, %rdi
	movl	$720902, %esi           # imm = 0xB0006
	callq	update_signature
	movabsq	$NumberOfBitsNeeded_signature, %rdi
	movl	$720902, %esi           # imm = 0xB0006
	callq	verify_signature
# BB#6:                                 #   in Loop: Header=BB2_3 Depth=1
	movabsq	$NumberOfBitsNeeded_signature, %rdi
	movl	$720903, %esi           # imm = 0xB0007
	callq	update_signature
	movabsq	$NumberOfBitsNeeded_signature, %rdi
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$720903, %esi           # imm = 0xB0007
	callq	verify_signature
	jmp	.LBB2_3
.Lfunc_end2:
	.size	NumberOfBitsNeeded, .Lfunc_end2-NumberOfBitsNeeded
	.cfi_endproc
                                        # -- End function
	.globl	ReverseBits             # -- Begin function ReverseBits
	.p2align	4, 0x90
	.type	ReverseBits,@function
ReverseBits:                            # @ReverseBits
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi13:
	.cfi_def_cfa_offset 16
.Lcfi14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi15:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Lcfi16:
	.cfi_offset %rbx, -32
.Lcfi17:
	.cfi_offset %r14, -24
	movl	%esi, %r14d
	movl	%edi, %ebx
	movabsq	$ReverseBits_signature, %rdi
	movl	$851969, %esi           # imm = 0xD0001
	callq	update_signature
	movabsq	$ReverseBits_signature, %rdi
	movl	%ebx, -28(%rbp)
	movl	%r14d, -32(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$851969, %esi           # imm = 0xD0001
	callq	verify_signature
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movabsq	$ReverseBits_signature, %rdi
	movl	$851970, %esi           # imm = 0xD0002
	callq	update_signature
	movabsq	$ReverseBits_signature, %rdi
	movl	-24(%rbp), %r14d
	movl	-32(%rbp), %ebx
	movl	$851970, %esi           # imm = 0xD0002
	callq	verify_signature
	cmpl	%ebx, %r14d
	jae	.LBB3_4
# BB#2:                                 #   in Loop: Header=BB3_1 Depth=1
	movabsq	$ReverseBits_signature, %rdi
	movl	$851971, %esi           # imm = 0xD0003
	callq	update_signature
	movabsq	$ReverseBits_signature, %rdi
	movl	-20(%rbp), %eax
	shll	$1, %eax
	movl	-28(%rbp), %ecx
	andl	$1, %ecx
	orl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	-28(%rbp), %eax
	shrl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	$851971, %esi           # imm = 0xD0003
	callq	verify_signature
# BB#3:                                 #   in Loop: Header=BB3_1 Depth=1
	movabsq	$ReverseBits_signature, %rdi
	movl	$851972, %esi           # imm = 0xD0004
	callq	update_signature
	movabsq	$ReverseBits_signature, %rdi
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	$851972, %esi           # imm = 0xD0004
	callq	verify_signature
	jmp	.LBB3_1
.LBB3_4:
	movabsq	$ReverseBits_signature, %rdi
	movl	$851973, %esi           # imm = 0xD0005
	callq	update_signature
	movabsq	$ReverseBits_signature, %rdi
	movl	-20(%rbp), %ebx
	movl	$851973, %esi           # imm = 0xD0005
	callq	verify_signature
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ReverseBits, .Lfunc_end3-ReverseBits
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function Index_to_frequency
.LCPI4_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	Index_to_frequency
	.p2align	4, 0x90
	.type	Index_to_frequency,@function
Index_to_frequency:                     # @Index_to_frequency
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi18:
	.cfi_def_cfa_offset 16
.Lcfi19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi20:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
.Lcfi21:
	.cfi_offset %rbx, -32
.Lcfi22:
	.cfi_offset %r14, -24
	movl	%esi, %r14d
	movl	%edi, %ebx
	movabsq	$Index_to_frequency_signature, %rdi
	movl	$917505, %esi           # imm = 0xE0001
	callq	update_signature
	movabsq	$Index_to_frequency_signature, %rdi
	movl	%ebx, -24(%rbp)
	movl	%r14d, -20(%rbp)
	movl	-20(%rbp), %r14d
	movl	-24(%rbp), %ebx
	movl	$917505, %esi           # imm = 0xE0001
	callq	verify_signature
	cmpl	%ebx, %r14d
	jb	.LBB4_2
# BB#1:
	movabsq	$Index_to_frequency_signature, %rdi
	movl	$917506, %esi           # imm = 0xE0002
	callq	update_signature
	movabsq	$Index_to_frequency_signature, %rdi
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	$917506, %esi           # imm = 0xE0002
	callq	verify_signature
	jmp	.LBB4_6
.LBB4_2:
	movabsq	$Index_to_frequency_signature, %rdi
	movl	$917507, %esi           # imm = 0xE0003
	callq	update_signature
	movabsq	$Index_to_frequency_signature, %rdi
	movl	-20(%rbp), %r14d
	movl	-24(%rbp), %ebx
	shrl	$1, %ebx
	movl	$917507, %esi           # imm = 0xE0003
	callq	verify_signature
	cmpl	%ebx, %r14d
	ja	.LBB4_4
# BB#3:
	movabsq	$Index_to_frequency_signature, %rbx
	movl	$Index_to_frequency_signature, %edi
	movl	$917508, %esi           # imm = 0xE0004
	callq	update_signature
	movl	-20(%rbp), %eax
	cvtsi2sdq	%rax, %xmm0
	movl	-24(%rbp), %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	%rbx, %rdi
	movl	$917508, %esi           # imm = 0xE0004
	callq	verify_signature
	jmp	.LBB4_6
.LBB4_4:
	movabsq	$Index_to_frequency_signature, %rdi
	movl	$917509, %esi           # imm = 0xE0005
	callq	update_signature
	movabsq	$Index_to_frequency_signature, %rdi
	movl	$917509, %esi           # imm = 0xE0005
	callq	verify_signature
# BB#5:
	movabsq	$Index_to_frequency_signature, %rbx
	movl	$Index_to_frequency_signature, %edi
	movl	$917510, %esi           # imm = 0xE0006
	callq	update_signature
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	cvtsi2sdq	%rdx, %xmm0
	movaps	.LCPI4_0(%rip), %xmm1   # xmm1 = [-0.000000e+00,-0.000000e+00]
	pxor	%xmm0, %xmm1
	cvtsi2sdq	%rax, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movq	%rbx, %rdi
	movl	$917510, %esi           # imm = 0xE0006
	callq	verify_signature
.LBB4_6:
	movabsq	$Index_to_frequency_signature, %rdi
	movl	$917511, %esi           # imm = 0xE0007
	callq	update_signature
	movabsq	$Index_to_frequency_signature, %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movl	$917511, %esi           # imm = 0xE0007
	callq	verify_signature
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Index_to_frequency, .Lfunc_end4-Index_to_frequency
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function fft_float
.LCPI5_0:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI5_1:
	.quad	-4611686018427387904    # double -2
.LCPI5_2:
	.quad	4611686018427387904     # double 2
	.text
	.globl	fft_float
	.p2align	4, 0x90
	.type	fft_float,@function
fft_float:                              # @fft_float
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi23:
	.cfi_def_cfa_offset 16
.Lcfi24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi25:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
.Lcfi26:
	.cfi_offset %rbx, -56
.Lcfi27:
	.cfi_offset %r12, -48
.Lcfi28:
	.cfi_offset %r13, -40
.Lcfi29:
	.cfi_offset %r14, -32
.Lcfi30:
	.cfi_offset %r15, -24
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %r13
	movl	%esi, %ebx
	movl	%edi, %r14d
	movabsq	$fft_float_signature, %rdi
	movl	$983041, %esi           # imm = 0xF0001
	callq	update_signature
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	%r14d, -52(%rbp)
	movl	%ebx, -100(%rbp)
	movq	%r13, -248(%rbp)
	movq	%r12, -240(%rbp)
	movq	%r15, -88(%rbp)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)
	movsd	%xmm0, -120(%rbp)
	movl	-52(%rbp), %edi
	callq	IsPowerOfTwo
	movl	%eax, %ebx
	movabsq	$fft_float_signature, %rdi
	movl	$983041, %esi           # imm = 0xF0001
	callq	verify_signature
# BB#1:
	movabsq	$fft_float_signature, %rdi
	movl	$983042, %esi           # imm = 0xF0002
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	$983042, %esi           # imm = 0xF0002
	callq	verify_signature
	cmpl	$0, %ebx
	jne	.LBB5_3
# BB#2:
	movabsq	$fft_float_signature, %rdi
	movl	$983043, %esi           # imm = 0xF0003
	callq	update_signature
	movabsq	$.L.str.5, %rsi
	movq	stderr, %rdi
	movl	-52(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	movabsq	$fft_float_signature, %rdi
	movl	$983043, %esi           # imm = 0xF0003
	callq	verify_signature
.LBB5_3:
	movabsq	$fft_float_signature, %rdi
	movl	$983044, %esi           # imm = 0xF0004
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	-100(%rbp), %ebx
	movl	$983044, %esi           # imm = 0xF0004
	callq	verify_signature
	cmpl	$0, %ebx
	je	.LBB5_5
# BB#4:
	movabsq	$fft_float_signature, %rdi
	movl	$983045, %esi           # imm = 0xF0005
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%xmm0, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm0
	movsd	%xmm0, -120(%rbp)
	movl	$983045, %esi           # imm = 0xF0005
	callq	verify_signature
.LBB5_5:
	movabsq	$fft_float_signature, %rdi
	movl	$983046, %esi           # imm = 0xF0006
	callq	update_signature
	movabsq	$.L.str.1.6, %rsi
	movq	-248(%rbp), %rdi
	callq	CheckPointer
	movabsq	$fft_float_signature, %rdi
	movl	$983046, %esi           # imm = 0xF0006
	callq	verify_signature
# BB#6:
	movabsq	$fft_float_signature, %rdi
	movl	$983047, %esi           # imm = 0xF0007
	callq	update_signature
	movabsq	$.L.str.2.7, %rsi
	movq	-88(%rbp), %rdi
	callq	CheckPointer
	movabsq	$fft_float_signature, %rdi
	movl	$983047, %esi           # imm = 0xF0007
	callq	verify_signature
# BB#7:
	movabsq	$fft_float_signature, %rdi
	movl	$983048, %esi           # imm = 0xF0008
	callq	update_signature
	movabsq	$.L.str.3, %rsi
	movq	-80(%rbp), %rdi
	callq	CheckPointer
	movabsq	$fft_float_signature, %rdi
	movl	$983048, %esi           # imm = 0xF0008
	callq	verify_signature
# BB#8:
	movabsq	$fft_float_signature, %rdi
	movl	$983049, %esi           # imm = 0xF0009
	callq	update_signature
	movl	-52(%rbp), %edi
	callq	NumberOfBitsNeeded
	movl	%eax, %ebx
	movabsq	$fft_float_signature, %rdi
	movl	$983049, %esi           # imm = 0xF0009
	callq	verify_signature
# BB#9:
	movabsq	$fft_float_signature, %rdi
	movl	$983050, %esi           # imm = 0xF000A
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	%ebx, -124(%rbp)
	movl	$0, -44(%rbp)
	movl	$983050, %esi           # imm = 0xF000A
	callq	verify_signature
.LBB5_10:                               # =>This Inner Loop Header: Depth=1
	movabsq	$fft_float_signature, %rdi
	movl	$983051, %esi           # imm = 0xF000B
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	-44(%rbp), %r14d
	movl	-52(%rbp), %ebx
	movl	$983051, %esi           # imm = 0xF000B
	callq	verify_signature
	cmpl	%ebx, %r14d
	jae	.LBB5_17
# BB#11:                                #   in Loop: Header=BB5_10 Depth=1
	movabsq	$fft_float_signature, %rdi
	movl	$983052, %esi           # imm = 0xF000C
	callq	update_signature
	movl	-44(%rbp), %edi
	movl	-124(%rbp), %esi
	callq	ReverseBits
	movl	%eax, %ebx
	movabsq	$fft_float_signature, %rdi
	movl	$983052, %esi           # imm = 0xF000C
	callq	verify_signature
# BB#12:                                #   in Loop: Header=BB5_10 Depth=1
	movabsq	$fft_float_signature, %rdi
	movl	$983053, %esi           # imm = 0xF000D
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	%ebx, -48(%rbp)
	movq	-248(%rbp), %rax
	movl	-44(%rbp), %ecx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movl	-48(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-240(%rbp), %rbx
	movl	$983053, %esi           # imm = 0xF000D
	callq	verify_signature
	cmpq	$0, %rbx
	jne	.LBB5_14
# BB#13:                                #   in Loop: Header=BB5_10 Depth=1
	movabsq	$fft_float_signature, %rdi
	movl	$983054, %esi           # imm = 0xF000E
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	$983054, %esi           # imm = 0xF000E
	callq	verify_signature
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB5_15
.LBB5_14:                               #   in Loop: Header=BB5_10 Depth=1
	movabsq	$fft_float_signature, %rdi
	movl	$983055, %esi           # imm = 0xF000F
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movq	-240(%rbp), %rax
	movl	-44(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movl	$983055, %esi           # imm = 0xF000F
	callq	verify_signature
.LBB5_15:                               #   in Loop: Header=BB5_10 Depth=1
	movabsq	$fft_float_signature, %rdi
	movl	$983056, %esi           # imm = 0xF0010
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	movl	$983056, %esi           # imm = 0xF0010
	callq	verify_signature
# BB#16:                                #   in Loop: Header=BB5_10 Depth=1
	movabsq	$fft_float_signature, %rdi
	movl	$983057, %esi           # imm = 0xF0011
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	$983057, %esi           # imm = 0xF0011
	callq	verify_signature
	jmp	.LBB5_10
.LBB5_17:
	movabsq	$fft_float_signature, %rdi
	movl	$983058, %esi           # imm = 0xF0012
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	$1, -92(%rbp)
	movl	$2, -68(%rbp)
	movl	$983058, %esi           # imm = 0xF0012
	callq	verify_signature
.LBB5_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_24 Depth 2
                                        #       Child Loop BB5_26 Depth 3
	movabsq	$fft_float_signature, %rdi
	movl	$983059, %esi           # imm = 0xF0013
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	-68(%rbp), %r14d
	movl	-52(%rbp), %ebx
	movl	$983059, %esi           # imm = 0xF0013
	callq	verify_signature
	cmpl	%ebx, %r14d
	ja	.LBB5_33
# BB#19:                                #   in Loop: Header=BB5_18 Depth=1
	movabsq	$fft_float_signature, %rbx
	movsd	.LCPI5_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movl	$fft_float_signature, %edi
	movl	$983060, %esi           # imm = 0xF0014
	callq	update_signature
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-68(%rbp), %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-112(%rbp), %xmm0
	callq	sin
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$983060, %esi           # imm = 0xF0014
	callq	verify_signature
# BB#20:                                #   in Loop: Header=BB5_18 Depth=1
	movabsq	$fft_float_signature, %rdi
	movl	$983061, %esi           # imm = 0xF0015
	callq	update_signature
	movabsq	$fft_float_signature, %rbx
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%xmm0, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm0
	callq	sin
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$983061, %esi           # imm = 0xF0015
	callq	verify_signature
# BB#21:                                #   in Loop: Header=BB5_18 Depth=1
	movabsq	$fft_float_signature, %rdi
	movl	$983062, %esi           # imm = 0xF0016
	callq	update_signature
	movabsq	$fft_float_signature, %rbx
	movsd	.LCPI5_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -264(%rbp)
	mulsd	-112(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$983062, %esi           # imm = 0xF0016
	callq	verify_signature
# BB#22:                                #   in Loop: Header=BB5_18 Depth=1
	movabsq	$fft_float_signature, %rdi
	movl	$983063, %esi           # imm = 0xF0017
	callq	update_signature
	movabsq	$fft_float_signature, %rbx
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%xmm0, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm0
	callq	cos
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$983063, %esi           # imm = 0xF0017
	callq	verify_signature
# BB#23:                                #   in Loop: Header=BB5_18 Depth=1
	movabsq	$fft_float_signature, %rdi
	movl	$983064, %esi           # imm = 0xF0018
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movsd	.LCPI5_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -216(%rbp)
	mulsd	-216(%rbp), %xmm0
	movsd	%xmm0, -208(%rbp)
	movl	$0, -44(%rbp)
	movl	$983064, %esi           # imm = 0xF0018
	callq	verify_signature
.LBB5_24:                               #   Parent Loop BB5_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_26 Depth 3
	movabsq	$fft_float_signature, %rdi
	movl	$983065, %esi           # imm = 0xF0019
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	-44(%rbp), %r14d
	movl	-52(%rbp), %ebx
	movl	$983065, %esi           # imm = 0xF0019
	callq	verify_signature
	cmpl	%ebx, %r14d
	jae	.LBB5_31
# BB#25:                                #   in Loop: Header=BB5_24 Depth=2
	movabsq	$fft_float_signature, %rdi
	movl	$983066, %esi           # imm = 0xF001A
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	$0, -96(%rbp)
	movl	$983066, %esi           # imm = 0xF001A
	callq	verify_signature
.LBB5_26:                               #   Parent Loop BB5_18 Depth=1
                                        #     Parent Loop BB5_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movabsq	$fft_float_signature, %rdi
	movl	$983067, %esi           # imm = 0xF001B
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	-96(%rbp), %r14d
	movl	-92(%rbp), %ebx
	movl	$983067, %esi           # imm = 0xF001B
	callq	verify_signature
	cmpl	%ebx, %r14d
	jae	.LBB5_29
# BB#27:                                #   in Loop: Header=BB5_26 Depth=3
	movabsq	$fft_float_signature, %rdi
	movl	$983068, %esi           # imm = 0xF001C
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-184(%rbp), %xmm0
	subsd	-176(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-152(%rbp), %xmm0
	subsd	-144(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movl	-48(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -72(%rbp)
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movl	-72(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movl	-72(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -232(%rbp)
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movl	-72(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movl	-72(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -224(%rbp)
	movq	-88(%rbp), %rax
	movl	-48(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm0
	subsd	-232(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-88(%rbp), %rax
	movl	-72(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm0
	subsd	-224(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-80(%rbp), %rax
	movl	-72(%rbp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movl	-48(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	$983068, %esi           # imm = 0xF001C
	callq	verify_signature
# BB#28:                                #   in Loop: Header=BB5_26 Depth=3
	movabsq	$fft_float_signature, %rdi
	movl	$983069, %esi           # imm = 0xF001D
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	movl	$983069, %esi           # imm = 0xF001D
	callq	verify_signature
	jmp	.LBB5_26
.LBB5_29:                               #   in Loop: Header=BB5_24 Depth=2
	movabsq	$fft_float_signature, %rdi
	movl	$983070, %esi           # imm = 0xF001E
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	$983070, %esi           # imm = 0xF001E
	callq	verify_signature
# BB#30:                                #   in Loop: Header=BB5_24 Depth=2
	movabsq	$fft_float_signature, %rdi
	movl	$983071, %esi           # imm = 0xF001F
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	-68(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	$983071, %esi           # imm = 0xF001F
	callq	verify_signature
	jmp	.LBB5_24
.LBB5_31:                               #   in Loop: Header=BB5_18 Depth=1
	movabsq	$fft_float_signature, %rdi
	movl	$983072, %esi           # imm = 0xF0020
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	-68(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$983072, %esi           # imm = 0xF0020
	callq	verify_signature
# BB#32:                                #   in Loop: Header=BB5_18 Depth=1
	movabsq	$fft_float_signature, %rdi
	movl	$983073, %esi           # imm = 0xF0021
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	-68(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -68(%rbp)
	movl	$983073, %esi           # imm = 0xF0021
	callq	verify_signature
	jmp	.LBB5_18
.LBB5_33:
	movabsq	$fft_float_signature, %rdi
	movl	$983074, %esi           # imm = 0xF0022
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	-100(%rbp), %ebx
	movl	$983074, %esi           # imm = 0xF0022
	callq	verify_signature
	cmpl	$0, %ebx
	je	.LBB5_39
# BB#34:
	movabsq	$fft_float_signature, %rbx
	movl	$fft_float_signature, %edi
	movl	$983075, %esi           # imm = 0xF0023
	callq	update_signature
	movl	-52(%rbp), %eax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -200(%rbp)
	movl	$0, -44(%rbp)
	movq	%rbx, %rdi
	movl	$983075, %esi           # imm = 0xF0023
	callq	verify_signature
.LBB5_35:                               # =>This Inner Loop Header: Depth=1
	movabsq	$fft_float_signature, %rdi
	movl	$983076, %esi           # imm = 0xF0024
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	-44(%rbp), %r14d
	movl	-52(%rbp), %ebx
	movl	$983076, %esi           # imm = 0xF0024
	callq	verify_signature
	cmpl	%ebx, %r14d
	jae	.LBB5_38
# BB#36:                                #   in Loop: Header=BB5_35 Depth=1
	movabsq	$fft_float_signature, %rdi
	movl	$983077, %esi           # imm = 0xF0025
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movl	-44(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movl	-44(%rbp), %ecx
	cvtss2sd	(%rax,%rcx,4), %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	$983077, %esi           # imm = 0xF0025
	callq	verify_signature
# BB#37:                                #   in Loop: Header=BB5_35 Depth=1
	movabsq	$fft_float_signature, %rdi
	movl	$983078, %esi           # imm = 0xF0026
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	$983078, %esi           # imm = 0xF0026
	callq	verify_signature
	jmp	.LBB5_35
.LBB5_38:
	movabsq	$fft_float_signature, %rdi
	movl	$983079, %esi           # imm = 0xF0027
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	$983079, %esi           # imm = 0xF0027
	callq	verify_signature
.LBB5_39:
	movabsq	$fft_float_signature, %rdi
	movl	$983080, %esi           # imm = 0xF0028
	callq	update_signature
	movabsq	$fft_float_signature, %rdi
	movl	$983080, %esi           # imm = 0xF0028
	callq	verify_signature
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	fft_float, .Lfunc_end5-fft_float
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function CheckPointer
	.type	CheckPointer,@function
CheckPointer:                           # @CheckPointer
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi31:
	.cfi_def_cfa_offset 16
.Lcfi32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Lcfi33:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Lcfi34:
	.cfi_offset %rbx, -32
.Lcfi35:
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movabsq	$CheckPointer_signature, %rdi
	movl	$1048577, %esi          # imm = 0x100001
	callq	update_signature
	movabsq	$CheckPointer_signature, %rdi
	movq	%rbx, -32(%rbp)
	movq	%r14, -24(%rbp)
	movq	-32(%rbp), %rbx
	movl	$1048577, %esi          # imm = 0x100001
	callq	verify_signature
	cmpq	$0, %rbx
	jne	.LBB6_2
# BB#1:
	movabsq	$CheckPointer_signature, %rdi
	movl	$1048578, %esi          # imm = 0x100002
	callq	update_signature
	movabsq	$.L.str.4, %rsi
	movq	stderr, %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$CheckPointer_signature, %rdi
	movl	$1048578, %esi          # imm = 0x100002
	callq	verify_signature
.LBB6_2:
	movabsq	$CheckPointer_signature, %rdi
	movl	$1048579, %esi          # imm = 0x100003
	callq	update_signature
	movabsq	$CheckPointer_signature, %rdi
	movl	$1048579, %esi          # imm = 0x100003
	callq	verify_signature
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	CheckPointer, .Lfunc_end6-CheckPointer
	.cfi_endproc
                                        # -- End function
	.globl	CallcheckerSet          # -- Begin function CallcheckerSet
	.p2align	4, 0x90
	.type	CallcheckerSet,@function
CallcheckerSet:                         # @CallcheckerSet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Lcfi36:
	.cfi_def_cfa_offset 16
	callq	init_monitor
	movl	$CallcheckerSet_signature, %edi
	movl	$1, %esi
	callq	update_signature
	movl	$CallcheckerSet_signature, %edi
	movl	$1, %esi
	callq	verify_signature
	movl	$1, %edi
	callq	enqueue_signature_with_return
	movl	$1, %edi
	callq	enqueue_signature_with_remainder_process
	popq	%rax
	retq
.Lfunc_end7:
	.size	CallcheckerSet, .Lfunc_end7-CallcheckerSet
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" [target finished!]\n"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	" [target] Execution time: %ld\n"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\n"
	.size	.L.str.2, 73

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Error in fft():  NumSamples=%u is not power of two\n"
	.size	.L.str.5, 52

	.type	.L.str.1.6,@object      # @.str.1.6
.L.str.1.6:
	.asciz	"RealIn"
	.size	.L.str.1.6, 7

	.type	.L.str.2.7,@object      # @.str.2.7
.L.str.2.7:
	.asciz	"RealOut"
	.size	.L.str.2.7, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ImagOut"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Error in fft_float():  %s == NULL\n"
	.size	.L.str.4, 35

	.type	main_signature,@object  # @main_signature
	.bss
	.globl	main_signature
	.p2align	2
main_signature:
	.long	0                       # 0x0
	.size	main_signature, 4

	.type	gettimeofday_signature,@object # @gettimeofday_signature
	.globl	gettimeofday_signature
	.p2align	2
gettimeofday_signature:
	.long	0                       # 0x0
	.size	gettimeofday_signature, 4

	.type	srand_signature,@object # @srand_signature
	.globl	srand_signature
	.p2align	2
srand_signature:
	.long	0                       # 0x0
	.size	srand_signature, 4

	.type	malloc_signature,@object # @malloc_signature
	.globl	malloc_signature
	.p2align	2
malloc_signature:
	.long	0                       # 0x0
	.size	malloc_signature, 4

	.type	rand_signature,@object  # @rand_signature
	.globl	rand_signature
	.p2align	2
rand_signature:
	.long	0                       # 0x0
	.size	rand_signature, 4

	.type	cos_signature,@object   # @cos_signature
	.globl	cos_signature
	.p2align	2
cos_signature:
	.long	0                       # 0x0
	.size	cos_signature, 4

	.type	sin_signature,@object   # @sin_signature
	.globl	sin_signature
	.p2align	2
sin_signature:
	.long	0                       # 0x0
	.size	sin_signature, 4

	.type	free_signature,@object  # @free_signature
	.globl	free_signature
	.p2align	2
free_signature:
	.long	0                       # 0x0
	.size	free_signature, 4

	.type	printf_signature,@object # @printf_signature
	.globl	printf_signature
	.p2align	2
printf_signature:
	.long	0                       # 0x0
	.size	printf_signature, 4

	.type	IsPowerOfTwo_signature,@object # @IsPowerOfTwo_signature
	.globl	IsPowerOfTwo_signature
	.p2align	2
IsPowerOfTwo_signature:
	.long	0                       # 0x0
	.size	IsPowerOfTwo_signature, 4

	.type	NumberOfBitsNeeded_signature,@object # @NumberOfBitsNeeded_signature
	.globl	NumberOfBitsNeeded_signature
	.p2align	2
NumberOfBitsNeeded_signature:
	.long	0                       # 0x0
	.size	NumberOfBitsNeeded_signature, 4

	.type	fprintf_signature,@object # @fprintf_signature
	.globl	fprintf_signature
	.p2align	2
fprintf_signature:
	.long	0                       # 0x0
	.size	fprintf_signature, 4

	.type	ReverseBits_signature,@object # @ReverseBits_signature
	.globl	ReverseBits_signature
	.p2align	2
ReverseBits_signature:
	.long	0                       # 0x0
	.size	ReverseBits_signature, 4

	.type	Index_to_frequency_signature,@object # @Index_to_frequency_signature
	.globl	Index_to_frequency_signature
	.p2align	2
Index_to_frequency_signature:
	.long	0                       # 0x0
	.size	Index_to_frequency_signature, 4

	.type	fft_float_signature,@object # @fft_float_signature
	.globl	fft_float_signature
	.p2align	2
fft_float_signature:
	.long	0                       # 0x0
	.size	fft_float_signature, 4

	.type	CheckPointer_signature,@object # @CheckPointer_signature
	.globl	CheckPointer_signature
	.p2align	2
CheckPointer_signature:
	.long	0                       # 0x0
	.size	CheckPointer_signature, 4

	.type	init_monitor_signature,@object # @init_monitor_signature
	.globl	init_monitor_signature
	.p2align	2
init_monitor_signature:
	.long	0                       # 0x0
	.size	init_monitor_signature, 4

	.type	update_signature_signature,@object # @update_signature_signature
	.globl	update_signature_signature
	.p2align	2
update_signature_signature:
	.long	0                       # 0x0
	.size	update_signature_signature, 4

	.type	verify_signature_signature,@object # @verify_signature_signature
	.globl	verify_signature_signature
	.p2align	2
verify_signature_signature:
	.long	0                       # 0x0
	.size	verify_signature_signature, 4

	.type	enqueue_signature_with_return_signature,@object # @enqueue_signature_with_return_signature
	.globl	enqueue_signature_with_return_signature
	.p2align	2
enqueue_signature_with_return_signature:
	.long	0                       # 0x0
	.size	enqueue_signature_with_return_signature, 4

	.type	enqueue_signature_with_remainder_process_signature,@object # @enqueue_signature_with_remainder_process_signature
	.globl	enqueue_signature_with_remainder_process_signature
	.p2align	2
enqueue_signature_with_remainder_process_signature:
	.long	0                       # 0x0
	.size	enqueue_signature_with_remainder_process_signature, 4

	.type	update_signature2_signature,@object # @update_signature2_signature
	.globl	update_signature2_signature
	.p2align	2
update_signature2_signature:
	.long	0                       # 0x0
	.size	update_signature2_signature, 4

	.type	update_signature3_signature,@object # @update_signature3_signature
	.globl	update_signature3_signature
	.p2align	2
update_signature3_signature:
	.long	0                       # 0x0
	.size	update_signature3_signature, 4

	.type	CallcheckerSet_signature,@object # @CallcheckerSet_signature
	.globl	CallcheckerSet_signature
	.p2align	2
CallcheckerSet_signature:
	.long	0                       # 0x0
	.size	CallcheckerSet_signature, 4


	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.ident	"clang version 5.0.0 (tags/RELEASE_500/final)"
	.section	".note.GNU-stack","",@progbits
