.global _start
.section .text

// FIXME: Not working all the way

_start:
    /* mov x8, #63 */
    /* mov x0, #0 */
    /* ldr x1, buf */
    /* mov x2, #1 */
    /* svc #0 */

    mov x8, #64
    mov x0, #1
    ldr x1, buf
    mov x2, #1
    svc #0

.section .data
buf: .ascii "x"
