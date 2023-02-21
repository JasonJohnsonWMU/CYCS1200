	.file	"bsearch.c"
	.text
	.globl	bsearch
	.type	bsearch, @function
bsearch:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	$0, -12(%rbp)
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.L2
.L6:
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jne	.L3
	movl	-4(%rbp), %eax
	jmp	.L4
.L3:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jle	.L5
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L2
.L5:
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
.L2:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L6
	movl	$-1, %eax
.L4:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	bsearch, .-bsearch
	.section	.rodata
.LC0:
	.string	"The returned value is: %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -48(%rbp)
	movl	$2, -44(%rbp)
	movl	$3, -40(%rbp)
	movl	$4, -36(%rbp)
	movl	$5, -32(%rbp)
	movl	$6, -28(%rbp)
	movl	$7, -24(%rbp)
	movl	$8, -20(%rbp)
	movl	$9, -16(%rbp)
	movl	$10, -12(%rbp)
	movl	$10, -52(%rbp)
	movl	-52(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	$3, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsearch
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-52(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	$7, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsearch
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-52(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	$10, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsearch
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-52(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsearch
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-52(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	$5, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsearch
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-52(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	$334654, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsearch
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
