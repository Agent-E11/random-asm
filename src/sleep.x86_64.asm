.global _start
.section .text

_start:
    /* nanosleep */
    mov $35, %rax
    /* %rdi should be a timespec, which is defined as: */
    /* struct timespec {                               */
    /*     time_t tv_sec;                              */
    /*     long tv_nsec;                               */
    /* }                                               */
    lea sleep_time, %rdi /* 5 seconds? */
    syscall

    /* exit */
    mov $60, %rax
    mov $0, %rdi
    syscall

.section .rodata
sleep_time:
    .quad 0x1
