# DO NOT EDIT!!! GENERATED FROM Dockerfile.template.
FROM vicamo/debian:sid-mips64el AS debian

FROM laarid/native-build:sid-amd64

RUN sudo dpkg --add-architecture mips64el \
	&& sudo apt-get update -qq \
	&& sudo apt-get upgrade -y \
	&& sudo apt-get install --no-install-recommends -y --allow-unauthenticated \
		crossbuild-essential-mips64el

COPY --from=debian /usr/bin/qemu-*-static /usr/bin
