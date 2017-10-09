.file "hello.s"
.data
msg:	.asciz "Hello, World!\n"

.global main
	.type main, @function

.text
main:
	movq	$0x04, %rax
	movq	$0x00, %rbx
	movq	$msg, %rcx
	movq	$14, %rdx
	int	$0x80

	movq	$0x01, %rax
	movq	$0x00, %rbx
	int	$0x80
