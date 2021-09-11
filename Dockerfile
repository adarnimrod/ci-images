FROM registry.hub.docker.com/library/alpine:3.14
# hadolint ignore=DL3018
RUN apk add --update --no-cache \
        bats \
        build-base \
        docker-cli \
        git \
        openssh-client-default \
        openssl \
    && \
    rm -rf /var/cache/apk/* /tmp/* /var/tmp/*
