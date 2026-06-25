FROM --platform=$TARGETPLATFORM opensuse/leap:16.0
LABEL org.opencontainers.image.authors="flameshot-org developers <info@flameshot.org>"

# Install base toolset
RUN zypper install -y \
    autoconf \
    ccache \
    cmake \
    curl \
    devscripts \
    dnf \
    fakeroot \
    gdb \
    git \
    lsb-release \
    rpm-build \
    sudo \
    tar \
    wget \
    xz \
    dnf-utils

# Enable sudo without password
RUN echo '%users ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
