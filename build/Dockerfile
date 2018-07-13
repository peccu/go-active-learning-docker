# build for nodejs
FROM node:8 AS node
MAINTAINER peccu <peccul@gmail.com>

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
  go get github.com/syou6162/go-active-learning-web || echo
RUN set -x; \
  cd $GOPATH/src/github.com/syou6162/go-active-learning-web \
  && go-assets-builder --package=templates templates dist > lib/assets/templates.go \
  && go build -v
RUN set -x; \
  go get github.com/syou6162/go-active-learning
RUN set -x; \
  cd $GOPATH/src/github.com/syou6162/go-active-learning \
  && go build -v

COPY cmd.sh /cmd.sh

EXPOSE 7777
CMD ["/cmd.sh"]

# end
