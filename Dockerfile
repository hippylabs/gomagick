FROM ubuntu:14.04
MAINTAINER Jibin George <mail@jibingeorge.com>

RUN apt-get update && \
    apt-get install -qy \
        pkg-config \
        libmagickwand-dev \
        git \
        wget && \

    #installing golang 1.5.1    
    wget -nv https://storage.googleapis.com/golang/go1.5.1.linux-amd64.tar.gz && \
    tar -xzf go1.5.1.linux-amd64.tar.gz -C /usr/local && \

    #clear up
    apt-get remove -y wget && \
    apt-get autoremove -y && \
    apt-get autoclean && \
    apt-get clean

ENV GOPATH /opt/go
ENV PATH $PATH:/opt/go/bin:/usr/local/go/bin

WORKDIR /opt/go

RUN go get github.com/tools/godep 