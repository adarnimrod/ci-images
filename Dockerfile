FROM alpine:3.12
RUN apk add --update --no-cache \
        bats \
        build-base \
        docker \
        git \
        openssh \
        openssl \
    ;
RUN wget https://github.com/cloudbees-oss/juxr/releases/download/0.1.22/juxr-x86_64-unknown-linux-musl.tar.gz -O - | tar -xzC /usr/local/bin
ENV GIT_AUTHOR_EMAIL='you@example.com' \
    GIT_AUTHOR_NAME='Your Name'
