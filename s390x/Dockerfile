# DO NOT EDIT!!! GENERATED FROM Dockerfile.template.
FROM laarid/devel:amd64

RUN (echo "deb [allow-insecure=yes] http://dl.bintray.com/laarid/main stretch main" | sudo tee /etc/apt/sources.list.d/bintray.list) \
	&& sudo dpkg --add-architecture s390x \
	&& sudo apt-get update -qq \
	&& sudo apt-get upgrade -y \
	&& sudo apt-get install --no-install-recommends -y --allow-unauthenticated \
		crossbuild-essential-s390x

ADD qemu-s390x-static /usr/bin/qemu-s390x-static
