FROM --platform=$TARGETPLATFORM fedora:41
LABEL maintainer="flameshot-org developers <info@flameshot.org>"

# Fix missing locales
ENV LC_ALL="C.UTF-8" \
	LANG="C.UTF-8"

# Update repositories and installed packages to avoid issues from:
#   https://github.com/tarantool/tarantool-qa/issues/60
RUN dnf upgrade --refresh -y && \
# Install base toolset, dnf5: https://discussion.fedoraproject.org/t/unable-to-find-development-tools-in-fedora-41/135154
	dnf -y install @development-tools \
		@c-development \
		@rpm-development-tools \
	&& \
	dnf -y install \
		fedora-packager \
		sudo \
		git \
		ccache \
		cmake && \
# Cleanup DNF metadata and decrease image size
	dnf clean all

# Enable cache system-wide
ENV PATH /usr/lib/ccache:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin

# Enable sudo without tty
RUN sed -i.bak -n -e '/^Defaults.*requiretty/ { s/^/# /;};/^%wheel.*ALL$/ { s/^/# / ;} ;/^#.*wheel.*NOPASSWD/ { s/^#[ ]*//;};p' /etc/sudoers
