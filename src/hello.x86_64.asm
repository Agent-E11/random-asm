.globl _start
.section .text


_start:
    mov $1, %rax /* syscall: 1 = write */
    mov $1, %rdi /* fd: 1 = stdout */
    lea message, %rsi /* pointer: message */
    mov $13, %rdx /* size: 13 */
    syscall

    mov $60, %rax /* syscall: 60 = exit */
    mov $0, %rdi /* exit code: 0 (clear %rax) */
    syscall


.section .rodata
message:
    .ascii "Hello world!\x0a"
