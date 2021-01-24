FROM docker:20.10
# hadolint ignore=DL3018
RUN apk add --update-cache --no-cache docker-compose
