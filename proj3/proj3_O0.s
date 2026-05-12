	.file	"proj3.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Can't call me in this manner! Try ./proj3 <filename> instead."
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
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	cmpl	$2, -52(%rbp)
	je	.L2
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L14
.L2:
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L4
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L14
.L4:
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	%rax, -16(%rbp)
	jmp	.L5
.L13:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	movl	$0, -20(%rbp)
	jmp	.L6
.L8:
	movl	-20(%rbp), %eax
	cltq
	cmpq	-16(%rbp), %rax
	jnb	.L7
	movl	-20(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
.L7:
	addl	$1, -20(%rbp)
.L6:
	cmpl	$15, -20(%rbp)
	jle	.L8
	movl	$124, %edi
	call	putchar@PLT
	movl	$0, -24(%rbp)
	jmp	.L9
.L12:
	movl	-24(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	cmpb	$31, %al
	jbe	.L10
	movl	-24(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	cmpb	$126, %al
	ja	.L10
	movl	-24(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	jmp	.L11
.L10:
	movl	$46, %edi
	call	putchar@PLT
.L11:
	addl	$1, -24(%rbp)
.L9:
	movl	-24(%rbp), %eax
	cltq
	cmpq	-16(%rbp), %rax
	jb	.L12
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	addl	$16, -4(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	%rax, -16(%rbp)
.L5:
	cmpq	$0, -16(%rbp)
	jne	.L13
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
