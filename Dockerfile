FROM registry.hub.docker.com/cloudbees/juxr:0.1.22 AS juxr

FROM registry.hub.docker.com/library/alpine:3.13
# hadolint ignore=DL3018
RUN apk add --update --no-cache \
        bats \
        build-base \
        docker-cli \
        git \
        openssh \
        openssl \
    ;
COPY --from=juxr /usr/local/bin/juxr /usr/local/bin/juxr
ENV GIT_AUTHOR_EMAIL='you@example.com' \
    GIT_AUTHOR_NAME='Your Name'
