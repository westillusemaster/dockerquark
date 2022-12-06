FROM alpine:latest AS builder

RUN apk add --no-cache \
        gcc \
        libc-dev \
        make \
        git \
    && git clone https://git.suckless.org/quark \
    && make -C quark

FROM alpine:latest

COPY --from=builder /quark/quark /
WORKDIR /var/www/html

COPY index.html .

CMD [ "/quark", "-p", "80", "-h", "0.0.0.0", "-d", "/var/www/html" ]
