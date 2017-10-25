# DO NOT EDIT!!! GENERATED FROM Dockerfile.template.
FROM laarid/native-build:buster-amd64

RUN sudo dpkg --add-architecture ppc64el \
	&& sudo apt-get update -qq \
	&& sudo apt-get upgrade -y \
	&& sudo apt-get install --no-install-recommends -y --allow-unauthenticated \
		crossbuild-essential-ppc64el

ADD qemu-ppc64le-static /usr/bin/qemu-ppc64le-static
