# DO NOT EDIT!!! GENERATED FROM Dockerfile.template.
FROM vicamo/debian:sid-armhf AS debian

FROM laarid/native-build:sid-amd64

RUN sudo dpkg --add-architecture armhf \
	&& sudo apt-get update -qq \
	&& sudo apt-get upgrade -y \
	&& sudo apt-get install --no-install-recommends -y --allow-unauthenticated \
		crossbuild-essential-armhf

COPY --from=debian /usr/bin/qemu-*-static /usr/bin
