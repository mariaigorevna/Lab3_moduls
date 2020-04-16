section .text

global _reverse

_reverse:
        push    rbp
		push	rsp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD  [rbp-8], rdi
        mov     QWORD  [rbp-16], rsi
        mov     rax, QWORD  [rbp-8]
        cmp     rax, QWORD  [rbp-16]
        jnb     .L3
        mov     rax, QWORD  [rbp-8]
        mov     edx, DWORD  [rax]
        mov     rax, QWORD  [rbp-16]
        mov     eax, DWORD  [rax]
        add     edx, eax
        mov     rax, QWORD  [rbp-8]
        mov     DWORD  [rax], edx
        mov     rax, QWORD  [rbp-8]
        mov     edx, DWORD  [rax]
        mov     rax, QWORD  [rbp-16]
        mov     eax, DWORD  [rax]
        sub     edx, eax
        mov     rax, QWORD  [rbp-16]
        mov     DWORD  [rax], edx
        mov     rax, QWORD  [rbp-8]
        mov     edx, DWORD  [rax]
        mov     rax, QWORD  [rbp-16]
        mov     eax, DWORD  [rax]
        sub     edx, eax
        mov     rax, QWORD  [rbp-8]
        mov     DWORD  [rax], edx
        mov     rax, QWORD  [rbp-16]
        lea     rdx, [rax-4]
        mov     rax, QWORD  [rbp-8]
        add     rax, 4
        mov     rsi, rdx
        mov     rdi, rax
        call    _reverse
.L3:
        mov rsp, rbp
        POP rsp
		POP rbp
        ret