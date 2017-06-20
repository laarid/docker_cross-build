# DO NOT EDIT!!! GENERATED FROM Dockerfile.template.
FROM laarid/native-build:testing-amd64

RUN sudo dpkg --add-architecture armhf \
	&& sudo apt-get update -qq \
	&& sudo apt-get upgrade -y \
	&& sudo apt-get install --no-install-recommends -y --allow-unauthenticated \
		crossbuild-essential-armhf

ADD qemu-arm-static /usr/bin/qemu-arm-static
