#!/bin/sh 
set -ex

IMAGENAME="uni-due-syssec/tex-builder"
TAG="latest"

if [[ "$(docker images -q $IMAGENAME:$TAG 2> /dev/null)" == "" ]];
then
    echo "Building the docker image!"
    docker build -t $IMAGENAME:$TAG -f Dockerfile .
fi

echo "Compiling the latex document!"
docker run --rm -v $(pwd):/document/:z $IMAGENAME:$TAG /bin/sh -c 'latexmk; latexmk -c'
