#! /bin/sh 
if [ -z "$1" ]; then
    echo "usage: ./compile.sh file-to-compile"
    exit 1
fi

docker run syssec/tex latexmk $1
docker cp $(docker ps -alq):/syssec-build/$1.pdf .
