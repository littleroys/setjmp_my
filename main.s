
main:	file format Mach-O 64-bit x86-64


Disassembly of section __TEXT,__text:

0000000100000e80 _setjmp_1:
100000e80: 5e                          	popq	%rsi
100000e81: 31 c0                       	xorl	%eax, %eax
100000e83: 48 89 1f                    	movq	%rbx, (%rdi)
100000e86: 48 89 67 08                 	movq	%rsp, 8(%rdi)
100000e8a: 56                          	pushq	%rsi
100000e8b: 48 89 6f 10                 	movq	%rbp, 16(%rdi)
100000e8f: 4c 89 67 18                 	movq	%r12, 24(%rdi)
100000e93: 4c 89 6f 20                 	movq	%r13, 32(%rdi)
100000e97: 4c 89 77 28                 	movq	%r14, 40(%rdi)
100000e9b: 4c 89 7f 30                 	movq	%r15, 48(%rdi)
100000e9f: 48 89 77 38                 	movq	%rsi, 56(%rdi)
100000ea3: c3                          	retq
100000ea4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100000eae: 66 90                       	nop

0000000100000eb0 _longjmp_1:
100000eb0: 55                          	pushq	%rbp
100000eb1: 48 89 e5                    	movq	%rsp, %rbp
100000eb4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100000eb8: 89 75 f4                    	movl	%esi, -12(%rbp)
100000ebb: 89 f0                       	movl	%esi, %eax
100000ebd: 48 8b 1f                    	movq	(%rdi), %rbx
100000ec0: 48 8b 67 08                 	movq	8(%rdi), %rsp
100000ec4: 48 8b 6f 10                 	movq	16(%rdi), %rbp
100000ec8: 4c 8b 67 18                 	movq	24(%rdi), %r12
100000ecc: 4c 8b 6f 20                 	movq	32(%rdi), %r13
100000ed0: 4c 8b 77 28                 	movq	40(%rdi), %r14
100000ed4: 4c 8b 7f 30                 	movq	48(%rdi), %r15
100000ed8: ff 67 38                    	jmpq	*56(%rdi)
100000edb: 5d                          	popq	%rbp
100000edc: c3                          	retq
100000edd: 0f 1f 00                    	nopl	(%rax)

0000000100000ee0 _main:
100000ee0: 55                          	pushq	%rbp
100000ee1: 48 89 e5                    	movq	%rsp, %rbp
100000ee4: 48 83 ec 20                 	subq	$32, %rsp
100000ee8: 48 8d 05 21 11 00 00        	leaq	4385(%rip), %rax
100000eef: c7 45 fc 00 00 00 00        	movl	$0, -4(%rbp)
100000ef6: 89 7d f8                    	movl	%edi, -8(%rbp)
100000ef9: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100000efd: 48 89 c7                    	movq	%rax, %rdi
100000f00: e8 7b ff ff ff              	callq	-133 <_setjmp_1>
100000f05: 89 45 ec                    	movl	%eax, -20(%rbp)
100000f08: 8b 75 ec                    	movl	-20(%rbp), %esi
100000f0b: 48 8d 3d 70 00 00 00        	leaq	112(%rip), %rdi
100000f12: b0 00                       	movb	$0, %al
100000f14: e8 47 00 00 00              	callq	71 <main.c+0x100000f60>
100000f19: 83 7d ec 00                 	cmpl	$0, -20(%rbp)
100000f1d: 0f 85 27 00 00 00           	jne	39 <_main+0x6a>
100000f23: 48 8d 3d 6a 00 00 00        	leaq	106(%rip), %rdi
100000f2a: b0 00                       	movb	$0, %al
100000f2c: e8 2f 00 00 00              	callq	47 <main.c+0x100000f60>
100000f31: 48 8d 3d d8 10 00 00        	leaq	4312(%rip), %rdi
100000f38: be 01 00 00 00              	movl	$1, %esi
100000f3d: 89 45 e8                    	movl	%eax, -24(%rbp)
100000f40: e8 6b ff ff ff              	callq	-149 <_longjmp_1>
100000f45: e9 0e 00 00 00              	jmp	14 <_main+0x78>
100000f4a: 48 8d 3d 4f 00 00 00        	leaq	79(%rip), %rdi
100000f51: b0 00                       	movb	$0, %al
100000f53: e8 08 00 00 00              	callq	8 <main.c+0x100000f60>
100000f58: 31 c0                       	xorl	%eax, %eax
100000f5a: 48 83 c4 20                 	addq	$32, %rsp
100000f5e: 5d                          	popq	%rbp
100000f5f: c3                          	retq

Disassembly of section __TEXT,__stubs:

0000000100000f60 __stubs:
100000f60: ff 25 9a 10 00 00           	jmpq	*4250(%rip)
