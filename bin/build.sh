#!/bin/sh

basename=${1:-asem}

test -d "build" || mkdir "build"

as "src/${basename}.s" -o "build/${basename}.o"

gcc "build/${basename}.o" -o "build/${basename}" -nostdlib -static
