## General Notes

Linux system call [reference](https://www.chromium.org/chromium-os/developer-library/reference/linux-constants/syscalls).

GNU Assembly syntax [reference](https://en.wikibooks.org/wiki/X86_Assembly/GNU_assembly_syntax)

To find the architecture of your (Linux) system, run `uname -m`.

## `x86_64 (64-bit)` Notes

[Syscall reference](https://www.chromium.org/chromium-os/developer-library/reference/linux-constants/syscalls/#x86_64-64-bit).

## `x86 (32-bit)` Notes

[Syscall reference](https://www.chromium.org/chromium-os/developer-library/reference/linux-constants/syscalls/#x86-32-bit).

## `arm64 (64-bit)` Notes

[Syscall reference](https://www.chromium.org/chromium-os/developer-library/reference/linux-constants/syscalls/#arm64-64-bit).

To invoke a system call:

```asm
svc 0
```

## `arm (32-bit)` Notes

[Syscall reference](https://www.chromium.org/chromium-os/developer-library/reference/linux-constants/syscalls/#arm-32-biteabi).

## Windows x64

Interesting article: <https://sonictk.github.io/asm_tutorial>
