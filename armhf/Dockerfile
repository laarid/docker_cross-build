# DO NOT EDIT!!! GENERATED FROM Dockerfile.template.
FROM vicamo/buildpack-deps:stretch-armhf

ENV LAARID_USER=laarid
ENV LAARID_HOME=/home/${LAARID_USER}

RUN apt-get update -qq \
	&& apt-get upgrade -y \
	&& apt-get install --no-install-recommends -y \
		apt-transport-https \
		autoconf-archive \
		autopoint \
		build-essential \
		ccache \
		devscripts \
		dh-autoreconf \
		dirmngr \
		equivs \
		google-mock \
		gnupg \
		libfile-fcntllock-perl \
		libgtest-dev \
		lintian \
		sudo \
	&& apt-get clean \
	&& rm -f /var/lib/apt/lists/*_dists_*

# Hard code DNS entries for mips/mipsel.
# See https://github.com/laarid/docker/issues/12
RUN (echo "deb [allow-insecure=yes] https://dl.bintray.com/laarid/main stretch main" | tee /etc/apt/sources.list.d/bintray.list) \
	&& (echo "75.126.118.188 dl.bintray.com" | tee -a /etc/hosts) \
	&& apt-get update -qq \
	&& rm -f /var/lib/apt/lists/*_dists_*

# Cannot fetch key on mips/mipsel.
# See https://github.com/laarid/docker/issues/11
#
# 	&& apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61

RUN useradd --comment 'LAARiD Development Account' \
		--home ${LAARID_HOME} --create-home \
		--shell /bin/bash \
		${LAARID_USER} \
	&& (echo "${LAARID_USER}:laarid" | chpasswd) \
	&& adduser ${LAARID_USER} sudo \
	&& (echo "${LAARID_USER} ALL=NOPASSWD: ALL" > /etc/sudoers.d/laarid) \
	&& chmod 0440 /etc/sudoers.d/laarid

VOLUME ["${LAARID_HOME}"]
WORKDIR ${LAARID_HOME}
USER ${LAARID_USER}
