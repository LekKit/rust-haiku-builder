ARG HAIKU_CROSS_COMPILER_ARCH=x86_64
ARG HAIKU_CROSS_COMPILER_IMAGE=ghcr.io/lekkit/haiku-cross-compiler:${HAIKU_CROSS_COMPILER_ARCH}

FROM ${HAIKU_CROSS_COMPILER_IMAGE}

ARG HAIKU_CROSS_COMPILER_ARCH=x86_64
ARG HAIKU_PORTS_URL=https://eu.hpkg.haiku-os.org/haikuports/master/${HAIKU_CROSS_COMPILER_ARCH}/current/
ARG HAIKU_INSTALL_PACKAGES="openssl openssl_devel curl curl_devel nghttp2 nghttp2_devel libssh2 libssh2_devel"

ARG RUST_REV=stable
ARG RUST_REPO=https://github.com/rust-lang/rust

ARG SOURCE_FIXUP_SCRIPT=patches/noop.sh
ARG RUST_XPY_COMMAND=dist
ARG RUST_XPY_CONFIG=configs/config-stable-${HAIKU_CROSS_COMPILER_ARCH}-131075.toml

# Required for [compiler-builtins](https://crates.io/crates/compiler_builtins) for wasm32-unknown-unknown (Rust 1.79.0)
RUN apt-get update && apt-get install -y --no-install-recommends clang curl cmake ninja-build pkgconf

COPY tools/pkgman.py /pkgman.py

RUN python3 pkgman.py add-repo ${HAIKU_PORTS_URL} && \
    python3 pkgman.py install ${HAIKU_INSTALL_PACKAGES}

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --profile minimal \
    && . "$HOME/.cargo/env"

# Prepare Rust bootstrap
RUN mkdir build && cd /build/ && git clone --depth=1 --branch ${RUST_REV} --shallow-submodules --recurse-submodules ${RUST_REPO}
COPY ${RUST_XPY_CONFIG} /build/rust/config.toml

# Run fixup script
COPY ${SOURCE_FIXUP_SCRIPT} /fixup.sh
RUN cd / && chmod a+x fixup.sh && ./fixup.sh

# Who the fuck in the Rust bootstrap passes -march=rv64gc -mabi=lp64 (soft float ABI)???
# Are they fucked in the head? Anyways, lets fix this in a horrible way
RUN mv /usr/bin/riscv64-unknown-haiku-gcc /usr/bin/riscv64-unknown-haiku-gcc-orig || true
RUN mv /usr/bin/riscv64-unknown-haiku-g++ /usr/bin/riscv64-unknown-haiku-g++-orig || true
COPY patches/riscv64-strip-mabi.sh /usr/bin/riscv64-unknown-haiku-gcc
COPY patches/riscv64-strip-mabi.sh /usr/bin/riscv64-unknown-haiku-g++

RUN cd /build/rust/ && \
    BOOTSTRAP_SKIP_TARGET_SANITY=1 \
    PKG_CONFIG_SYSROOT_DIR=/system/ \
    PKG_CONFIG_LIBDIR=/system/develop/lib/pkgconfig/ \
    I686_UNKNOWN_HAIKU_OPENSSL_LIB_DIR=/system/develop/lib/x86 \
    I686_UNKNOWN_HAIKU_OPENSSL_INCLUDE_DIR=/system/develop/headers/ \
    X86_64_UNKNOWN_HAIKU_OPENSSL_LIB_DIR=/system/develop/lib/ \
    X86_64_UNKNOWN_HAIKU_OPENSSL_INCLUDE_DIR=/system/develop/headers/ \
    RISCV64GC_UNKNOWN_HAIKU_OPENSSL_LIB_DIR=/system/develop/lib/ \
    RISCV64GC_UNKNOWN_HAIKU_OPENSSL_INCLUDE_DIR=/system/develop/headers/ \
    ./x.py -j $(nproc) ${RUST_XPY_COMMAND}

RUN . "$HOME/.cargo/env" \
    && rustup toolchain link haiku-cross /build/rust/build/x86_64-unknown-linux-gnu/stage1 \
    && rustup default haiku-cross

WORKDIR /build/
