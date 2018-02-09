#! /bin/sh 
if [ -z "$1" ]; then
    echo "usage: ./compile.sh file-to-compile (without file suffix)"
    exit 1
fi

docker run --rm syssec/tex latexmk -f $1
docker cp $(docker ps -alq):/syssec-build/$1.pdf .
