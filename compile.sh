#! /bin/sh 
if [ -z "$1" ]; then
    echo "usage: ./compile.sh file-to-compile (without file suffix)"
    exit 1
fi

# Builds a container with the files in the directory
docker build -t syssec/tex -f Dockerfile .

# Runs latexmk in the container
docker run syssec/tex latexmk -f $1

# Copies the pdf into the directory
docker cp $(docker ps -alq):/syssec-build/$1.pdf .

# kills the container
docker stop $(docker ps -alq)
