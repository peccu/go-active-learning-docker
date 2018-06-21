MAINTAINER peccu <peccul@gmail.com>

# build for nodejs
FROM node:8 AS node

RUN set -x; \
  git clone https://github.com/syou6162/go-active-learning-web
RUN set -x; \
  cd go-active-learning-web \
  && mkdir -p lib/assets \
  && npm i \
  && npx webpack

# build for golang
FROM golang:1.8 AS golang

COPY --from=node /go-active-learning-web $GOPATH/src/github.com/syou6162/go-active-learning-web

RUN set -x; \
  go get github.com/jessevdk/go-assets-builder
RUN set -x; \
  go get github.com/syou6162/go-active-learning-web

