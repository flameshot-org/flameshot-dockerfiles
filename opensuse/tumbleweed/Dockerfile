FROM --platform=$TARGETPLATFORM opensuse/tumbleweed:latest
MAINTAINER flameshot-org developers <info@flameshot.org>

RUN zypper install -y autoconf ccache cmake curl devscripts dnf fakeroot gdb git lsb-release rpm-build sudo tar wget xz yum-utils

RUN echo "%users ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
