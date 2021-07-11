# hadolint ignore=DL3006
FROM quay.io/pypa/manylinux2014_x86_64
ENV PATH /opt/python/cp36-cp36m/bin:/opt/rh/devtoolset-9/root/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --progress-bar=off \
        docutils \
        pipenv \
        poetry \
        pygments \
        pyinstaller \
        tox \
        twine \
        wheel \
    && \
    rm -rf /tmp/* /var/tmp/* /root/.cache/*
