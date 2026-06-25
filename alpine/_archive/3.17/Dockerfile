FROM --platform=$TARGETPLATFORM alpine:3.17
MAINTAINER flameshot-org developers <info@flameshot.org>

RUN set -x \
    && apk add --no-cache su-exec make git tar xz alpine-sdk sudo \
    && sed -i.bak -n -e '/^Defaults.*requiretty/ { s/^/# /;};/^%wheel.*ALL$/ { s/^/# / ;} ;/^#.*wheel.*NOPASSWD/ { s/^#[ ]*//;};p' /etc/sudoers
