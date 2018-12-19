#! /bin/sh 
if [ -z "$1" ]; then
    echo "usage: ./compile.sh file-to-compile (without file suffix)"
    exit 1
fi

CONTAINER_TO_DELETE=$(docker images -qf "dangling=true")
DOCKER_ID=$(docker ps -alq)
FILENAME=$(basename $1 .tex)

# Builds a container with the files in the directory
docker build -t syssec/tex -f Dockerfile .

# Runs latexmk in the container
docker run syssec/tex latexmk -f $FILENAME

# Copies the pdf into the directory
docker cp $DOCKER_ID:/syssec-build/$FILENAME.pdf .

# kills and stops the container
docker stop $DOCKER_ID
docker rmi --force $CONTAINER_TO_DELETE
