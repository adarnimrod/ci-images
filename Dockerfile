FROM buildpack-deps:buster
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        docker.io \
        python3-dev \
        python3-pip \
        python3-setuptools \
        python3-venv \
        shellcheck \
    && \
    python3 -m pip install --no-cache-dir \
        docker-compose \
        pipenv \
        pre_commit \
        tox \
    && \
    rm -rf /root/.cache /tmp/* /var/tmp/* /var/lib/apt/lists/* /var/cache/apt/archives/*
