FROM golang:1.4.2
MAINTAINER maran@ethdev.com

RUN apt-get update && apt-get install -y libgmp-dev
RUN go get -u github.com/tools/godep
RUN go get -d github.com/ethereum/go-ethereum/cmd/ethereum
RUN cd /go/src/github.com/ethereum/go-ethereum && git checkout develop && godep restore
RUN mkdir /shared
