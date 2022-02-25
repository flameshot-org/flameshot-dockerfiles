FROM --platform=$TARGETPLATFORM centos:7
MAINTAINER flameshot-org developers <info@flameshot.org>

ARG DEVTOOLSET=devtoolset-8

ENV LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

RUN yum update -v -y

RUN yum -y install wget curl pygpgme yum-utils
RUN yum -y install epel-release centos-release-scl centos-release-scl-rh
RUN curl -s https://packagecloud.io/install/repositories/packpack/backports/script.rpm.sh | bash

RUN yum -y groupinstall "Development Tools"
RUN yum -y install ${DEVTOOLSET}-toolchain ${DEVTOOLSET}-binutils-devel cmake cmake28 cmake3 sudo

RUN sed -i.bak -n -e "/^Defaults.*requiretty/ { s/^/# /;};/^%wheel.*ALL$/ { s/^/# / ;} ;/^#.*wheel.*NOPASSWD/ { s/^#[ ]*//;};p" /etc/sudoers

ENV PATH=/usr/lib64/ccache:/opt/rh/${DEVTOOLSET}/root/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV LD_LIBRARY_PATH=/opt/rh/${DEVTOOLSET}/root/usr/lib64:/opt/rh/${DEVTOOLSET}/root/usr/lib
ENV PERL5LIB=/opt/rh/${DEVTOOLSET}/root/usr/lib64/perl5/vendor_perl:/opt/rh/${DEVTOOLSET}/root/usr/lib/perl5:/opt/rh/${DEVTOOLSET}/root/usr/share/perl5/vendor_perl
ENV PYTHONPATH=/opt/rh/${DEVTOOLSET}/root/usr/lib64/python2.7/site-packages:/opt/rh/${DEVTOOLSET}/root/usr/lib/python2.7/site-packages
ENV XDG_CONFIG_DIRS=/opt/rh/${DEVTOOLSET}/root/etc/xdg:/etc/xdg
ENV XDG_DATA_DIRS=/opt/rh/${DEVTOOLSET}/root/usr/share:/usr/local/share:/usr/share

RUN rm -f /opt/rh/${DEVTOOLSET}/root/usr/bin/sudo

RUN sed -e "/\\[centos-sclo-sclo-source\\]/,+6d" -i /etc/yum.repos.d/CentOS-SCLo-scl.repo
RUN sed -e "/\\[centos-sclo-rh-source\\]/,+6d" -i /etc/yum.repos.d/CentOS-SCLo-scl-rh.repo

RUN sed -e "/\\[extras-source\\]/,+6d" -i /etc/yum.repos.d/CentOS-Sources.repo

RUN sed -e "/\\[updates-source\\]/,+6d" -i /etc/yum.repos.d/CentOS-Sources.repo

RUN sed -e "/\\[base-source\\]/,+6d" -i /etc/yum.repos.d/CentOS-Sources.repo

RUN yum clean all
