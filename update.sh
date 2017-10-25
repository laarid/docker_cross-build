#!/bin/sh

# set -x

QEMU_ARCH_amd64=x86_64
QEMU_ARCH_arm64=aarch64
QEMU_ARCH_armel=arm
QEMU_ARCH_armhf=arm
QEMU_ARCH_lpia=i386
QEMU_ARCH_powerpc=ppc
QEMU_ARCH_powerpcspe=ppc
QEMU_ARCH_ppc64el=ppc64le

suite=$1

for dockerfile in $(find . -type f -name Dockerfile); do
  [ -n "$(head -n 1 $dockerfile | grep '^#.*GENERATED FROM')" ] || continue;

  arch=$(echo "$dockerfile" | cut -d/ -f2)
  eval "qemu_arch=\${QEMU_ARCH_${arch}:-${arch}}"

  cat > "$dockerfile" <<EOD
# DO NOT EDIT!!! GENERATED FROM Dockerfile.template.
FROM laarid/native-build:${suite}-amd64

RUN sudo dpkg --add-architecture ${arch} \\
	&& sudo apt-get update -qq \\
	&& sudo apt-get upgrade -y \\
	&& sudo apt-get install --no-install-recommends -y --allow-unauthenticated \\
		crossbuild-essential-${arch}

ADD qemu-${qemu_arch}-static /usr/bin/qemu-${qemu_arch}-static
EOD

done
