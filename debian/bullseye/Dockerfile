FROM --platform=$TARGETPLATFORM debian:bullseye
MAINTAINER flameshot-org developers <info@flameshot.org>

ENV LC_ALL=C.UTF-8 LANG=C.UTF-8

ENV DEBIAN_FRONTEND=noninteractive

RUN echo "apt::install-recommends \"false\";" > /etc/apt/apt.conf.d/00recommends

RUN apt-get update && apt-get install -y apt-transport-https curl wget gnupg ca-certificates

RUN apt-get update && apt-get install -y sudo git build-essential cmake gdb ccache devscripts debhelper cdbs fakeroot lintian equivs rpm alien

RUN echo "%adm ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
