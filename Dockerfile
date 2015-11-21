FROM ubuntu:14.04
MAINTAINER Jibin George <mail@jibingeorge.com>

ENV GOPATH /opt/go

RUN apt-get update && apt-get install -qy \
    build-essential \
    git \
    wget \
    libmagickcore-dev \
    libmagickwand-dev \
    imagemagick \
    golang

WORKDIR /opt/go