FROM --platform=$TARGETPLATFORM fedora:35
MAINTAINER flameshot-org developers <info@flameshot.org>

ENV LC_ALL=C.UTF-8 LANG=C.UTF-8

RUN dnf update -v -y

RUN dnf -y group install "Development Tools"
RUN dnf -y group install "C Development Tools and Libraries"
RUN dnf -y group install "RPM Development Tools"
RUN dnf -y install fedora-packager
RUN dnf -y install sudo git ccache cmake

ENV PATH /usr/lib/ccache:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin

RUN sed -i.bak -n -e "/^Defaults.*requiretty/ { s/^/# /;};/^%wheel.*ALL$/ { s/^/# / ;} ;/^#.*wheel.*NOPASSWD/ { s/^#[ ]*//;};p" /etc/sudoers

RUN dnf clean all
