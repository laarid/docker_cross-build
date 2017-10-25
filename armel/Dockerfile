# DO NOT EDIT!!! GENERATED FROM Dockerfile.template.
FROM vicamo/debian:buster-armel AS debian

FROM laarid/native-build:buster-amd64

RUN sudo dpkg --add-architecture armel \
	&& sudo apt-get update -qq \
	&& sudo apt-get upgrade -y \
	&& sudo apt-get install --no-install-recommends -y --allow-unauthenticated \
		crossbuild-essential-armel

COPY --from=debian /usr/bin/qemu-*-static /usr/bin
