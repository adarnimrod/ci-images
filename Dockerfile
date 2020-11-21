FROM buildpack-deps:buster
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        python3-dev \
        python3-pip \
        python3-venv \
    && \
    python3 -m pip install --progress-bar=off --no-cache-dir --upgrade pip tox pipenv && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* /var/cache/apt/archives/* /root/.cache/*
