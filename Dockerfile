FROM alpine:3.15.3

ARG VERSION=1.7.4.2-r0

RUN apk --no-cache add socat=${VERSION} ca-certificates && \
    rm -rf /var/cache/apk/* && \
    rm -rf /root/.cache

ENTRYPOINT ["socat"]