# DO NOT EDIT!!! GENERATED FROM Dockerfile.template.
FROM laarid/native-build:buster-amd64

RUN sudo dpkg --add-architecture mips \
	&& sudo apt-get update -qq \
	&& sudo apt-get upgrade -y \
	&& sudo apt-get install --no-install-recommends -y --allow-unauthenticated \
		crossbuild-essential-mips

ADD qemu-mips-static /usr/bin/qemu-mips-static
