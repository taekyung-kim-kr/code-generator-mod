FROM golang:1.13.4

ENV GO111MODULE=on

RUN go get -x k8s.io/code-generator; exit 0
RUN go get -x k8s.io/apimachinery; exit 0
RUN go get -x github.com/spf13/pflag; exit 0
RUN go get -x k8s.io/gengo/args; exit 0
