FROM golang:1.13.4

ENV GO111MODULE=on

#RUN go get -x k8s.io/code-generator@kubernetes-1.14.7; exit 0
RUN go get -x k8s.io/code-generator; exit 0
#RUN go get -x k8s.io/apimachinery; exit 0
#RUN go get -x github.com/spf13/pflag; exit 0
#RUN go get -x k8s.io/gengo/args; exit 0

ARG generator="${GOPATH}/pkg/mod/k8s.io/code-generator"
RUN mv ${generator}* ${generator}

RUN chmod 744 ${generator}/generate-groups.sh
WORKDIR ${generator}

RUN cd ${generator} && go get k8s.io/client-go@kubernetes-1.16.0; exit 0
RUN cd ${generator} && go get k8s.io/api@kubernetes-1.16.0; exit 0
RUN cd ${generator} && go get k8s.io/apimachinery@kubernetes-1.16.0; exit 0
