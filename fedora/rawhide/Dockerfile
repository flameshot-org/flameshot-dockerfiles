FROM --platform=$TARGETPLATFORM fedora:rawhide
MAINTAINER flameshot-org developers <info@flameshot.org>

# Fix missing locales
ENV LC_ALL="C.UTF-8" LANG="C.UTF-8"

# Update repositories and installed packages to avoid of issues got at:
#   https://github.com/tarantool/tarantool-qa/issues/60
RUN dnf update -v -y

# Install base toolset
RUN dnf -y group install 'Development Tools'
RUN dnf -y group install 'C Development Tools and Libraries'
RUN dnf -y group install 'RPM Development Tools'
RUN dnf -y install fedora-packager
RUN dnf -y install sudo git ccache cmake

# The script from packagecloud.io detects the OS as fedora/32 and
# reports that it does not support this operating system.
# Commented this out so.
#
# Setup backport repository for python2 packages
# RUN curl -s https://packagecloud.io/install/repositories/packpack/backports/script.rpm.sh | bash

# Enable cache system-wide
ENV PATH /usr/lib/ccache:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin

# Enable sudo without tty
RUN sed -i.bak -n -e '/^Defaults.*requiretty/ { s/^/# /;};/^%wheel.*ALL$/ { s/^/# / ;} ;/^#.*wheel.*NOPASSWD/ { s/^#[ ]*//;};p' /etc/sudoers

# Cleanup DNF metadata and decrease image size
RUN dnf clean all