# run using `source <scriptname>`

alias b="${PWD:-.}/bin/build.sh"
unalias r > /dev/null 2>&1
r () {
    basename=${1:-asem}
    b "$basename"
    ./build/"${basename}" # Run compiled executable
}
