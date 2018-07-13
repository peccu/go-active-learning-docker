#!/bin/bash
docker-compose exec web /go/src/github.com/syou6162/go-active-learning-web/go-active-learning-web apply --listname github
docker-compose exec web /go/src/github.com/syou6162/go-active-learning-web/go-active-learning-web apply --listname slideshare
docker-compose exec web /go/src/github.com/syou6162/go-active-learning-web/go-active-learning-web apply --listname speakerdeck
docker-compose exec web /go/src/github.com/syou6162/go-active-learning-web/go-active-learning-web apply --listname twitter
docker-compose exec web /go/src/github.com/syou6162/go-active-learning-web/go-active-learning-web apply --listname arxiv
docker-compose exec web /go/src/github.com/syou6162/go-active-learning-web/go-active-learning-web apply --listname general
