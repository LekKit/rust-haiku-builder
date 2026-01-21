#!/bin/sh
podman build \
    --build-arg RUST_REPO=https://github.com/LekKit/rust \
    --build-arg RUST_REV=1.89.0 \
    --build-arg HAIKU_CROSS_COMPILER_ARCH=riscv64 \
    --tag rust-haiku-builder:riscv64 .
