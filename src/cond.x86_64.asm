.globl _start
.section .text

_start:
    mov $0, %rbx /* %rbx is the value */
    cmp $5, %rbx
    jge not_less /* jump to `not_less` if it is greater or equal */
    jmp less

not_less:
    mov $1, %rax /* write */
    mov $1, %rdi /* stdout */
    lea nless_msg, %rsi
    mov $9, %rdx /* length */
    syscall

    jmp exit

less:
    mov $1, %rax
    mov $1, %rdi
    lea less_msg, %rsi
    mov $5, %rdx
    syscall

    jmp exit

exit:
    mov $60, %rax
    mov $0, %rdi
    syscall

.section .rodata
nless_msg: .ascii "not less\x0a"
less_msg: .ascii "less\x0a"
