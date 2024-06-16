# run using `source <scriptname>`

dir=${PWD:-.}

alias b="${dir}/bin/build.sh"
unalias r > /dev/null 2>&1
r () {
    # Build and run compiled executable
    b "$1" && ./build/"$(basename -s .asm "$1")"
}
