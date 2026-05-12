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
	.text
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
	movq	%rax, %r15
	testq	%rax, %rax
	je	.L16
	movq	%rsp, %rdi
	movq	%rax, %rcx
	movl	$16, %edx
	movl	$1, %esi
	call	fread@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L5
	movl	$0, %r14d
	leaq	.LC4(%rip), %r13
	movq	%rsp, %r12
	jmp	.L11
.L16:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L1
	.p2align 4
.L6:
	addq	$1, %rbx
	cmpq	$16, %rbx
	je	.L17
.L7:
	cmpq	%rbp, %rbx
	jnb	.L6
	movzbl	(%rbx,%r12), %esi
	movq	%r13, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	jmp	.L6
.L17:
	movl	$124, %edi
	call	putchar@PLT
	movq	%rsp, %rbx
	addq	%rsp, %rbp
	jmp	.L10
.L8:
	movl	$46, %edi
	call	putchar@PLT
.L9:
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	je	.L18
.L10:
	movzbl	(%rbx), %edi
	leal	-32(%rdi), %eax
	cmpb	$94, %al
	ja	.L8
	movzbl	%dil, %edi
	call	putchar@PLT
	jmp	.L9
.L18:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	addl	$16, %r14d
	movq	%r15, %rcx
	movl	$16, %edx
	movl	$1, %esi
	movq	%r12, %rdi
	call	fread@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L5
.L11:
	movl	%r14d, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$32, %edi
	call	putchar@PLT
	movl	$0, %ebx
	jmp	.L7
.L5:
	movq	%r15, %rdi
	call	fclose@PLT
	movl	$0, %eax
	jmp	.L1
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
