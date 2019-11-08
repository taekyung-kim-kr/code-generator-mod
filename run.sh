#!/bin/bash

OUTPUT=${1:-/Users/we/go-modules}

docker run -it --rm -v $(pwd)/script:/script -v ${OUTPUT}:/go/src/github.com/taekyung-kim-kr  kubernetes-codegen:1.13.4 /bin/bash
