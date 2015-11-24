FROM ubuntu:14.04
MAINTAINER Jibin George <mail@jibingeorge.com>

ENV GOPATH /opt/go
ENV PATH $PATH:/opt/go/bin
RUN apt-get update && apt-get install -qy \
    pkg-config \
    libmagickwand-dev \
    golang

WORKDIR /opt/go

RUN go get github.com/tools/godep 