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

for f in $(find . -type f -name Dockerfile); do
  [ -n "$(head -n 1 $f | grep '^#.*GENERATED FROM')" ] || continue;

  arch=$(echo "$f" | cut -d/ -f2)
  eval "qemu_arch=\${QEMU_ARCH_${arch}:-${arch}}"
  cat Dockerfile.template | \
    sed -e "s,@IMAGE_ARCH@,${arch},g" \
      -e "s,@QEMU_ARCH@,${qemu_arch},g" > "$f"
done
