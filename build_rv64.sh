#!/bin/sh
podman build \
    --build-arg RUST_REV=1.89.0 \
    --build-arg RUST_REPO=https://github.com/rust-lang/rust \
    --build-arg HAIKU_CROSS_COMPILER_IMAGE=localhost/haiku-cross-compiler:riscv64 \
    --build-arg HAIKUPORTS_URL=https://eu.hpkg.haiku-os.org/haikuports/master/riscv64/current/ \
    --build-arg INSTALL_PACKAGES="openssl3 openssl3_devel nghttp2 nghttp2_devel" \
    --build-arg RUST_XPY_COMMAND=dist \
    --build-arg RUST_XPY_CONFIG=configs/config-stable-riscv64-131075.toml \
    --tag rust-haiku-riscv64:1.89.0 .
