FROM alpine:latest

RUN \
  && apk add \
    libc-dev \
    git \
    gcc \
    make \
  && git clone https://git.suckless.org/quark src \
  && make --directory=src \
  && mv src/quark / \
  && rm src -rf
