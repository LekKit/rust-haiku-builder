#!/bin/sh
podman build \
    --build-arg HAIKU_CROSS_COMPILER_ARCH=riscv64 \
    --tag rust-haiku-builder:riscv64 .
