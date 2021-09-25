# hadolint ignore=DL3006
FROM adarnimrod/goose as goose

FROM python:2.7-slim-stretch
# hadolint ignore=DL3008,DL3013
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        build-essential \
        git \
        libffi-dev \
        libpq-dev \
        libssl-dev \
        zlib1g-dev \
    && \
    pip install --progress-bar=off --no-cache-dir --upgrade 'pip<21.0' tox pipenv && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* /var/cache/apt/archives/* /root/.cache/*
COPY --from=goose /usr/local/bin/goose /usr/local/bin/goose
