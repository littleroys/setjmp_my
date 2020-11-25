#include <stdio.h>

struct context
{
    unsigned long rbx;
    unsigned long rsp;
    unsigned long rbp;
    unsigned long r12;
    unsigned long r13;
    unsigned long r14;
    unsigned long r15;
    unsigned long rip;
};

extern int setjmp_my(struct context *);
extern void longjmp_my(struct context *, int i);

__asm__(
    ".global _setjmp_my\n"
    "_setjmp_my:\n\t"
    "popq    %rsi\n\t"
    "xorl   %eax,  %eax\n\t"
    "movq   %rbx,  (%rdi)\n\t"
    "movq   %rsp,  8(%rdi)\n\t"
    "pushq   %rsi\n\t"
    "movq   %rbp,  16(%rdi)\n\t"
    "movq   %r12,  24(%rdi)\n\t"
    "movq   %r13,  32(%rdi)\n\t"
    "movq   %r14,  40(%rdi)\n\t"
    "movq   %r15,  48(%rdi)\n\t"
    "movq   %rsi,  56(%rdi)\n\t"
    "retq");

__asm__(
    ".global _longjmp_my\n"
    "_longjmp_my:\n\t"
    "movl   %esi,  %eax\n\t"
    "movq   (%rdi),  %rbx\n\t"
    "movq   8(%rdi),  %rsp\n\t"
    "movq   16(%rdi),  %rbp\n\t"
    "movq   24(%rdi),  %r12\n\t"
    "movq   32(%rdi),  %r13\n\t"
    "movq   40(%rdi),  %r14\n\t"
    "movq   48(%rdi),  %r15\n\t"
    "jmp   *56(%rdi)");

struct context ctx;

int main(int argc, char const *argv[])
{
    int result = setjmp_my(&ctx);
    if (result == 0)
    {
        printf("from setjmp\n");
        longjmp_my(&ctx, 1);
    }
    else
    {
        printf("from longjmp\n");
    }

    return 0;
}
