#!/bin/sh 
set -ex

docker build -t uni-due-syssec/tex-builder:latest -f Dockerfile .
docker run --rm -it -v $(pwd):/document/:z  uni-due-syssec/tex-builder
