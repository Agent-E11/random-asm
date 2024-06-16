#!/bin/sh

filename=${1:-src/main.asm}

if ! test -f "${filename}"; then
    echo "Error: no such file: ${filename}"; exit 1
fi

# Make sure file has .asm extension
case $filename in
    *.asm);;
    *) echo "Error: can only build .asm files"; exit 1;;
esac

# Strip directories and extension
corename=$(basename -s .asm "$filename")

# Make build directory
test -d "build" || mkdir "build"

# Assemble
as -o "build/${corename}.o" "${filename}"
# Link
ld -o "build/${corename}" "build/${corename}.o"

echo "New executable at: build/${corename}"
