FROM ggrandes/ubuntu32
MAINTAINER maran@ethdev.com

RUN apt-get update && apt-get install -y libgmp-dev gcc-arm-none-eabi build-essential m4 git mercurial wget gcc-4.7-arm-linux-gnueabi
RUN wget http://ftp.gnu.org/gnu/gmp/gmp-5.1.3.tar.gz && tar -xvf gmp-5.1.3.tar.gz
RUN cd gmp-5.1.3 && CC=arm-linux-gnueabi-gcc-4.7 ./configure --build=amd64-pc-linux --host=arm-linux --disable-shared --prefix=/usr/local/arm/ && make && make install
RUN wget https://storage.googleapis.com/golang/go1.4.2.src.tar.gz
RUN tar -xvf go1.4.2.src.tar.gz && cd go/src && GOHOSTARCH=386 GOOS=linux GOARCH=arm ./make.bash

ENV GOPATH=/projects/
ENV GOROOT=/go
ENV PATH=$PATH:$GOPATH/bin:$GOROOT/bin

RUN go get -u github.com/tools/godep
RUN go get -d github.com/ethereum/go-ethereum/cmd/ethereum
RUN cd /projects/src/github.com/ethereum/go-ethereum && git checkout develop && godep restore
RUN mkdir /shared
