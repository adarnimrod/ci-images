# hadolint ignore=DL3006
FROM registry.hub.docker.com/library/centos:7
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
# hadolint ignore=DL3013,DL3033
RUN yum group install -y "Development tools" && \
    yum install -y \
        python3-devel \
        python3-pip \
        python3-wheel \
    && \
    yum clean all && \
    pip3 install --no-cache-dir --upgrade pip && \
    pip3 install --no-cache-dir \
        auditwheel \
        build \
        docutils \
        pipenv \
        poetry \
        pygments \
        pyinstaller \
        tox \
        twine \
        wheel \
    && \
    rm -rf /tmp/* /var/tmp/* ~/.cache/* /var/cache/yum/*
