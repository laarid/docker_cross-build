# DO NOT EDIT!!! GENERATED FROM Dockerfile.template.
FROM laarid/native-build:stretch-amd64

RUN (echo "deb [allow-insecure=yes] http://dl.bintray.com/laarid/main stretch main" | sudo tee /etc/apt/sources.list.d/bintray.list) \
	&& sudo dpkg --add-architecture mipsel \
	&& sudo apt-get update -qq \
	&& sudo apt-get upgrade -y \
	&& sudo apt-get install --no-install-recommends -y --allow-unauthenticated \
		crossbuild-essential-mipsel

ADD qemu-mipsel-static /usr/bin/qemu-mipsel-static
