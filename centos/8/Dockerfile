FROM --platform=$TARGETPLATFORM centos:8
MAINTAINER flameshot-org developers <info@flameshot.org>

RUN dnf update -v -y

RUN yum -y install wget yum-utils

RUN yum -y install epel-release
RUN sed -i "s/\\[PowerTools\\]/[powertools]/g" /etc/yum.repos.d/*.repo
RUN yum config-manager --set-enabled powertools

RUN curl -s https://packagecloud.io/install/repositories/packpack/backports/script.rpm.sh | bash

RUN yum -y groupinstall 'Development Tools'
RUN yum -y install cmake sudo

RUN sed -i.bak -n -e "/^Defaults.*requiretty/ { s/^/# /;};/^%wheel.*ALL$/ { s/^/# / ;} ;/^#.*wheel.*NOPASSWD/ { s/^#[ ]*//;};p" /etc/sudoers

RUN dnf clean all
