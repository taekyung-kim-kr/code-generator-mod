#!/bin/bash

REPO=${1:-demo}
PKG=${2:-foo}
VER=${3:-v1}
USER=${4:-github.com/taekyung-kim-kr}

OUTPUT=${USER}/${REPO}/pkg/client
INPUT=${USER}/${REPO}/pkg/apis

#./generate-groups.sh all "github.com/taekyung-kim-kr/demo/pkg/client" "github.com/taekyung-kim-kr/demo/pkg/apis" foo:v1 --go-header-file ./hack/boilerplate.go.txt
./generate-groups.sh all ${OUTPUT} ${INPUT} ${PKG}:${VER} --go-header-file ./hack/boilerplate.go.txt
