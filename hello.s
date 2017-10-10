.file "hello.s"
.data
msg:	.asciz "Hello, World!\n"

.global _start
	.type _start, @function

.text
_start:
	movq	$1, %rax
	xor	%rdi, %rdi
	movq	$msg, %rsi
	movq	$14, %rdx
	syscall

	movq	$60, %rax
	xor	%rdi, %rdi
	syscall
