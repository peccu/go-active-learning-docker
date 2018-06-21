docker build -t go-active-learning-docker ./build/ \
  && docker run --rm -it -p 7777:7777 go-active-learning-docker
