#!/usr/bin/env bash

IMAGENAME=${1:-cl-bootcamp-base}
IMAGEFILE=${2:-$IMAGENAME_$(date +%Y%m%d)_$(date +"%H%M%S").wasm}
DOCKERFILEPATH=${1:-./dockerfiles/$IMAGENAME}
docker build --rm -t $IMAGENAME -f $DOCKERFILEPATH .
c2w $IMAGENAME:latest $IMAGENAME.wasm
sed -i 's/cl-bootcamp-base.wasm/$IMAGENAME.wasm/g' index.html