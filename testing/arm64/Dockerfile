# DO NOT EDIT!!! GENERATED FROM Dockerfile.template.
FROM laarid/native-build:testing-amd64

RUN sudo dpkg --add-architecture arm64 \
	&& sudo apt-get update -qq \
	&& sudo apt-get upgrade -y \
	&& sudo apt-get install --no-install-recommends -y --allow-unauthenticated \
		crossbuild-essential-arm64

ADD qemu-aarch64-static /usr/bin/qemu-aarch64-static
