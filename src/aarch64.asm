.globl _start
.section .text

_start:
    // exit syscall
    mov x8, 0x5d
    mov x0, 69
    svc 0
