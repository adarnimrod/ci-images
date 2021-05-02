FROM registry.hub.docker.com/library/alpine:3.13
# hadolint ignore=DL3018
RUN apk add --no-cache --update --repository http://dl-cdn.alpinelinux.org/alpine/edge/community hugo && \
    hugo version
