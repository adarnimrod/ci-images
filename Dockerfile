FROM buildpack-deps:buster
# hadolint ignore=DL3008,DL3013
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        python3-dev \
        python3-pip \
        python3-venv \
    && \
    python3 -m pip install --progress-bar=off --no-cache-dir --upgrade pip && \
    python3 -m pip install --progress-bar=off --no-cache-dir --upgrade \
        pipenv \
        poetry \
        tox \
    && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* /var/cache/apt/archives/* /root/.cache/*
