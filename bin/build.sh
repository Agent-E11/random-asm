#!/bin/sh

basename=${1:-asem}

test -d "build" || mkdir "build"

nasm -f elf "src/${basename}.asm" -o "build/${basename}.o"

ld -m elf_i386 -s -o "build/${basename}" "build/${basename}.o"
