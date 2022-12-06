FROM alpine:latest

RUN \
  apk add git gcc make && git clone https://git.suckless.org/quark && \
  make --directory=quark && \
  mv quark/quark /
