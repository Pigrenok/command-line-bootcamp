#!/usr/bin/env bash
set -ex

IMAGE_NAME=${1:-cl_bootcamp_base}
IMAGE_FILE=${2:-$IMAGENAME_$(date +%Y%m%d)_$(date +"%H%M%S").wasm}
DOCKERFILEPATH=${1:-./dockerfiles/$IMAGE_NAME}
docker build --rm -t $IMAGE_NAME -f $DOCKERFILEPATH .
./c2w $IMAGENAME:latest $IMAGENAME.wasm
sed -i 's/cl-bootcamp-base.wasm/$IMAGENAME.wasm/g' index.html