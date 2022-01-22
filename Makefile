
all:
	mkdir -p alpine/3.9 alpine/3.10 alpine/3.11 alpine/3.12
	base=alpine ver=3.9  shdocker -s _alpine -d alpine/3.9/Dockerfile                           2>/dev/null
	base=alpine ver=3.10 shdocker -s _alpine -d alpine/3.10/Dockerfile                          2>/dev/null
	base=alpine ver=3.11 shdocker -s _alpine -d alpine/3.11/Dockerfile                          2>/dev/null
	base=alpine ver=3.12 shdocker -s _alpine -d alpine/3.12/Dockerfile                          2>/dev/null
	@
	mkdir -p centos/6 centos/7 centos/8
	base=centos ver=6 shdocker -s _centos -d centos/6/Dockerfile                                2>/dev/null
	base=centos ver=7 shdocker -s _centos -d centos/7/Dockerfile                                2>/dev/null
	base=centos ver=8 shdocker -s _centos -d centos/8/Dockerfile                                2>/dev/null
	@
	mkdir -p debian/bullseye debian/buster debian/sid
	base=debian ver=bullseye  shdocker -s _debian -d debian/bullseye/Dockerfile                 2>/dev/null
	base=debian ver=buster    shdocker -s _debian -d debian/buster/Dockerfile                   2>/dev/null
	base=debian ver=sid       shdocker -s _debian -d debian/sid/Dockerfile                      2>/dev/null
	@
	mkdir -p fedora/31 fedora/32 fedora/33 fedora/34 fedora/35 fedora/rawhide
	base=fedora ver=31      shdocker -s _fedora -d fedora/31/Dockerfile                         2>/dev/null
	base=fedora ver=32      shdocker -s _fedora -d fedora/32/Dockerfile                         2>/dev/null
	base=fedora ver=33      shdocker -s _fedora -d fedora/33/Dockerfile                         2>/dev/null
	base=fedora ver=34      shdocker -s _fedora -d fedora/34/Dockerfile                         2>/dev/null
	base=fedora ver=35      shdocker -s _fedora -d fedora/35/Dockerfile                         2>/dev/null
	base=fedora ver=rawhide shdocker -s _fedora -d fedora/rawhide/Dockerfile                    2>/dev/null
	@
	mkdir -p opensuse/leap/15.1 opensuse/leap/15.2 opensuse/leap/15.3 opensuse/tumbleweed
	base=opensuse/leap       ver=15.1   shdocker -s _opensuse -d opensuse/leap/15.1/Dockerfile  2>/dev/null
	base=opensuse/leap       ver=15.2   shdocker -s _opensuse -d opensuse/leap/15.2/Dockerfile  2>/dev/null
	base=opensuse/leap       ver=15.3   shdocker -s _opensuse -d opensuse/leap/15.3/Dockerfile  2>/dev/null
	base=opensuse/tumbleweed ver=latest shdocker -s _opensuse -d opensuse/tumbleweed/Dockerfile 2>/dev/null
	@
	mkdir -p ubuntu/bionic ubuntu/focal
	base=ubuntu ver=bionic shdocker -s _ubuntu -d ubuntu/bionic/Dockerfile                      2>/dev/null
	base=ubuntu ver=focal  shdocker -s _ubuntu -d ubuntu/focal/Dockerfile                       2>/dev/null
