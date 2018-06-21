FROM golang:1.8
MAINTAINER peccu <peccul@gmail.com>

RUN set -x; \
  go get github.com/jessevdk/go-assets-builder
RUN mkdir -p $GOPATH/src/github.com/syou6162/go-active-learning-web/lib/assets
RUN go get github.com/syou6162/go-active-learning-web
