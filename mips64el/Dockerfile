# DO NOT EDIT!!! GENERATED FROM Dockerfile.template.
FROM laarid/devel:amd64

RUN (echo "deb [allow-insecure=yes] http://dl.bintray.com/laarid/main stretch main" | sudo tee /etc/apt/sources.list.d/bintray.list) \
	&& sudo dpkg --add-architecture mips64el \
	&& sudo apt-get update -qq \
	&& sudo apt-get upgrade -y \
	&& sudo apt-get install --no-install-recommends -y --allow-unauthenticated \
		crossbuild-essential-mips64el

ADD qemu-mips64el-static /usr/bin/qemu-mips64el-static
