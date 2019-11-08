FROM golang:1.13.4

ENV GO111MODULE=on

RUN go get -x k8s.io/code-generator@kubernetes-1.14.7; exit 0
RUN go get -x k8s.io/apimachinery; exit 0
RUN go get -x github.com/spf13/pflag; exit 0
RUN go get -x k8s.io/gengo/args; exit 0

ARG repo="${GOPATH}/src/github.com/superman/demo"

RUN mkdir -p $repo

VOLUME $repo
