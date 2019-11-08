#!/bin/bash

OUTPUT=${1:-/Users/we/go-modules}
USER=${2:-github.com/taekyung-kim-kr}

GOPATH="/go"

docker run -it --rm -v $(pwd)/script:/script -v ${OUTPUT}:${GOPATH}/src/${USER}  kubernetes-codegen:1.13.4 /bin/bash
