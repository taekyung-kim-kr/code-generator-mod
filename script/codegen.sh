#!/bin/bash

./generate-groups.sh all "github.com/taekyung-kim-kr/demo/pkg/client" "github.com/taekyung-kim-kr/demo/pkg/apis" foo:v1 --go-header-file ./hack/boilerplate.go.txt
