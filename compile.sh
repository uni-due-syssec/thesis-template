#! /bin/sh 
if [ -z "$1" ]; then
    echo "usage: ./compile.sh file-to-compile"
    exit 1
fi

FILENAME=$(basename $1 .tex)


# Builds a container with the files in the directory
docker build -t syssec/tex -f Dockerfile .

# Runs latexmk in the container
docker run syssec/tex latexmk -f $FILENAME

# Copies the pdf into the directory
docker cp $(docker ps -alq):/syssec-build/$FILENAME.pdf .


# kills and stops the container
docker stop $(docker ps -alq)
docker rmi --force $(docker images -qf "dangling=true")
