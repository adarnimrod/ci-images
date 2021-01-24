FROM registry.hub.docker.com/library/golang:alpine3.13 as kind
RUN GO111MODULE=on go get sigs.k8s.io/kind@v0.9.0

FROM registry.hub.docker.com/library/alpine:3.13
COPY --from=kind /go/bin/kind /usr/local/bin/
# hadolint ignore=DL3018
RUN apk add --update --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ \
        helm \
        kubectl \
    && \
    apk add --update --no-cache \
        docker-cli \
    ;
