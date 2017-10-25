# DO NOT EDIT!!! GENERATED FROM Dockerfile.template.
FROM vicamo/debian:buster-s390x AS debian

FROM laarid/native-build:buster-amd64

RUN sudo dpkg --add-architecture s390x \
	&& sudo apt-get update -qq \
	&& sudo apt-get upgrade -y \
	&& sudo apt-get install --no-install-recommends -y --allow-unauthenticated \
		crossbuild-essential-s390x

COPY --from=debian /usr/bin/qemu-*-static /usr/bin
