	.file	"proj3.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Can't call me in this manner! Try ./proj3 <filename> instead."
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"rb"
.LC2:
	.string	"Couldn't open given file!"
.LC3:
	.string	"%08x"
.LC4:
	.string	"%02x"
.LC5:
	.string	"|"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	cmpl	$2, %edi
	je	.L2
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
.L3:
	movl	$1, %eax
.L1:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L2:
	.cfi_restore_state
	movq	8(%rsi), %rdi
	leaq	.LC1(%rip), %rsi
	call	fopen@PLT
	movq	%rax, %r14
	testq	%rax, %rax
	je	.L64
	movq	%rax, %rcx
	movl	$16, %edx
	movl	$1, %esi
	movq	%rsp, %rdi
	call	fread@PLT
	movq	%rsp, %r12
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L6
	xorl	%r13d, %r13d
	leaq	.LC4(%rip), %rbp
	.p2align 4
	.p2align 3
.L13:
	movl	%r13d, %esi
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	movzbl	(%rsp), %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	cmpq	$1, %rbx
	jne	.L65
.L8:
	movl	$124, %edi
	movq	%r12, %r15
	addq	%r12, %rbx
	call	putchar@PLT
	.p2align 4
	.p2align 3
.L12:
	movzbl	(%r15), %edi
	leal	-32(%rdi), %eax
	cmpb	$94, %al
	jbe	.L62
	movl	$46, %edi
.L62:
	call	putchar@PLT
	addq	$1, %r15
	cmpq	%r15, %rbx
	jne	.L12
	leaq	.LC5(%rip), %rdi
	addl	$16, %r13d
	call	puts@PLT
	movq	%r14, %rcx
	movl	$16, %edx
	movq	%r12, %rdi
	movl	$1, %esi
	call	fread@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L13
.L6:
	movq	%r14, %rdi
	call	fclose@PLT
	xorl	%eax, %eax
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L65:
	movzbl	1(%rsp), %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	cmpq	$2, %rbx
	je	.L8
	movzbl	2(%rsp), %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	cmpq	$3, %rbx
	je	.L8
	movzbl	3(%rsp), %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	cmpq	$4, %rbx
	je	.L8
	movzbl	4(%rsp), %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	cmpq	$5, %rbx
	je	.L8
	movzbl	5(%rsp), %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	cmpq	$6, %rbx
	je	.L8
	movzbl	6(%rsp), %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	cmpq	$7, %rbx
	je	.L8
	movzbl	7(%rsp), %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	cmpq	$8, %rbx
	je	.L8
	movzbl	8(%rsp), %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	cmpq	$9, %rbx
	je	.L8
	movzbl	9(%rsp), %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	cmpq	$10, %rbx
	je	.L8
	movzbl	10(%rsp), %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	cmpq	$11, %rbx
	je	.L8
	movzbl	11(%rsp), %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	cmpq	$12, %rbx
	je	.L8
	movzbl	12(%rsp), %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	cmpq	$13, %rbx
	je	.L8
	movzbl	13(%rsp), %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	cmpq	$14, %rbx
	je	.L8
	movzbl	14(%rsp), %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	cmpq	$15, %rbx
	je	.L8
	movzbl	15(%rsp), %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	jmp	.L8
.L64:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	jmp	.L3
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
