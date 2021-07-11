# hadolint ignore=DL3006
FROM registry.access.redhat.com/ubi7/ubi
# hadolint ignore=DL3013,DL3033
RUN yum install -y --disableplugin=subscription-manager \
        autoconf \
        automake \
        binutils \
        bison \
        byacc \
        cscope \
        ctags \
        diffstat \
        doxygen \
        elfutils \
        flex \
        gcc \
        gcc-c++ \
        gcc-gfortran \
        gettext \
        git \
        indent \
        intltool \
        libtool \
        make \
        patch \
        patchutils \
        pkgconfig \
        rcs \
        redhat-rpm-config \
        rh-python36-python-devel \
        rh-python36-python-pip \
        rpm-build \
        rpm-sign \
        subversion \
        swig \
        systemtap \
    && \
    yum --disableplugin=subscription-manager clean all && \
    pip install --no-cache-dir --progress-bar=off \
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
