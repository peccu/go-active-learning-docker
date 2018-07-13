#!/bin/bash
docker cp ./go/src/github.com/syou6162/go-active-learning-web/lib $(docker-compose ps -q web):/go/src/github.com/syou6162/go-active-learning-web
docker cp ./go/src/github.com/syou6162/go-active-learning-web/src $(docker-compose ps -q web):/go/src/github.com/syou6162/go-active-learning-web
docker cp ./go/src/github.com/syou6162/go-active-learning-web/templates $(docker-compose ps -q web):/go/src/github.com/syou6162/go-active-learning-web
