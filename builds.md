# 1.69.0 for x86
```bash
podman build --build-arg HAIKU_CROSS_COMPILER_TAG=x86_gcc2h-r1beta4 \
    --build-arg RUST_REV=rust-haiku-1.69.0 \
    --build-arg HAIKUPORTS_URL=https://eu.hpkg.haiku-os.org/haikuports/master/x86_gcc2/current/ \
    --build-arg INSTALL_PACKAGES="openssl_x86 openssl_x86_devel curl_x86 curl_x86_devel nghttp2_x86 nghttp2_x86_devel libssh2_x86 libssh2_x86_devel" \
    --build-arg RUST_XPY_COMMAND=dist \
    --build-arg RUST_XPY_CONFIG=configs/config-stable-x86.toml \
    --tag rust-haiku-x86_gcc2h:1.69.0 .
```


# 1.70.0 for x86
```bash
podman build --build-arg HAIKU_CROSS_COMPILER_TAG=x86_gcc2h-r1beta4 \
    --build-arg RUST_REV=1.70.0 \
    --build-arg RUST_REPO=https://github.com/rust-lang/rust \
    --build-arg HAIKUPORTS_URL=https://eu.hpkg.haiku-os.org/haikuports/master/x86_gcc2/current/ \
    --build-arg INSTALL_PACKAGES="openssl_x86 openssl_x86_devel nghttp2_x86 nghttp2_x86_devel" \
    --build-arg SOURCE_FIXUP_SCRIPT=patches/fix-1.70.0.sh \
    --build-arg RUST_XPY_COMMAND=dist \
    --build-arg RUST_XPY_CONFIG=configs/config-stable-x86.toml \
    --tag rust-haiku-x86_gcc2h:1.70.0 .
```


# 1.73.0 for x86
```bash
podman build --build-arg HAIKU_CROSS_COMPILER_TAG=x86_gcc2h-r1beta4 \
    --build-arg RUST_REV=1.73.0 \
    --build-arg RUST_REPO=https://github.com/rust-lang/rust \
    --build-arg HAIKUPORTS_URL=https://eu.hpkg.haiku-os.org/haikuports/master/x86_gcc2/current/ \
    --build-arg INSTALL_PACKAGES="openssl_x86 openssl_x86_devel nghttp2_x86 nghttp2_x86_devel" \
    --build-arg SOURCE_FIXUP_SCRIPT=patches/fix-1.73.0.sh \
    --build-arg RUST_XPY_COMMAND=dist \
    --build-arg RUST_XPY_CONFIG=configs/config-stable-x86.toml \
    --tag rust-haiku-x86_gcc2h:1.73.0 .
```

# 1.73.0 for x86_64
```bash
podman build --build-arg HAIKU_CROSS_COMPILER_TAG=x86_64-r1beta4 \
    --build-arg RUST_REV=1.73.0 \
    --build-arg RUST_REPO=https://github.com/rust-lang/rust \
    --build-arg HAIKUPORTS_URL=https://eu.hpkg.haiku-os.org/haikuports/master/x86_64/current/ \
    --build-arg INSTALL_PACKAGES="openssl openssl_devel nghttp2 nghttp2_devel" \
    --build-arg SOURCE_FIXUP_SCRIPT=patches/fix-1.73.0.sh \
    --build-arg RUST_XPY_COMMAND=dist \
    --build-arg RUST_XPY_CONFIG=configs/config-stable-x86_64.toml \
    --tag rust-haiku-x86_64:1.73.0 .
```


# 1.76.0 for x86
```bash
podman build --build-arg HAIKU_CROSS_COMPILER_TAG=x86_gcc2h-r1beta4 \
    --build-arg RUST_REV=1.76.0 \
    --build-arg RUST_REPO=https://github.com/rust-lang/rust \
    --build-arg HAIKUPORTS_URL=https://eu.hpkg.haiku-os.org/haikuports/master/x86_gcc2/current/ \
    --build-arg INSTALL_PACKAGES="openssl_x86 openssl_x86_devel nghttp2_x86 nghttp2_x86_devel" \
    --build-arg SOURCE_FIXUP_SCRIPT=patches/fix-1.76.0.sh \
    --build-arg RUST_XPY_COMMAND=dist \
    --build-arg RUST_XPY_CONFIG=configs/config-stable-x86.toml \
    --tag rust-haiku-x86_gcc2h:1.76.0 .
```

# 1.76.0 for x86_64
```bash
podman build --build-arg HAIKU_CROSS_COMPILER_TAG=x86_64-r1beta4 \
    --build-arg RUST_REV=1.76.0 \
    --build-arg RUST_REPO=https://github.com/rust-lang/rust \
    --build-arg HAIKUPORTS_URL=https://eu.hpkg.haiku-os.org/haikuports/master/x86_64/current/ \
    --build-arg INSTALL_PACKAGES="openssl openssl_devel nghttp2 nghttp2_devel" \
    --build-arg SOURCE_FIXUP_SCRIPT=patches/fix-1.76.0.sh \
    --build-arg RUST_XPY_COMMAND=dist \
    --build-arg RUST_XPY_CONFIG=configs/config-stable-x86_64.toml \
    --tag rust-haiku-x86_64:1.76.0 .
```

# 1.79.0 for x86
```bash
podman build --build-arg HAIKU_CROSS_COMPILER_TAG=x86_gcc2h-r1beta4 \
    --build-arg RUST_REV=1.79.0 \
    --build-arg RUST_REPO=https://github.com/rust-lang/rust \
    --build-arg HAIKUPORTS_URL=https://eu.hpkg.haiku-os.org/haikuports/master/x86_gcc2/current/ \
    --build-arg INSTALL_PACKAGES="openssl_x86 openssl_x86_devel nghttp2_x86 nghttp2_x86_devel" \
    --build-arg RUST_XPY_COMMAND=dist \
    --build-arg RUST_XPY_CONFIG=configs/config-stable-x86.toml \
    --tag rust-haiku-x86_gcc2h:1.79.0 .
```

# 1.79.0 for x86_64
```bash
podman build --build-arg HAIKU_CROSS_COMPILER_TAG=x86_64-r1beta4 \
    --build-arg RUST_REV=1.79.0 \
    --build-arg RUST_REPO=https://github.com/rust-lang/rust \
    --build-arg HAIKUPORTS_URL=https://eu.hpkg.haiku-os.org/haikuports/master/x86_64/current/ \
    --build-arg INSTALL_PACKAGES="openssl openssl_devel nghttp2 nghttp2_devel" \
    --build-arg RUST_XPY_COMMAND=dist \
    --build-arg RUST_XPY_CONFIG=configs/config-stable-x86_64.toml \
    --tag rust-haiku-x86_64:1.79.0 .
```

# 1.81.0 for x86 on r1beta5
```bash
podman build --build-arg HAIKU_CROSS_COMPILER_TAG=x86_gcc2h-r1beta5 \
    --build-arg RUST_REV=1.81.0 \
    --build-arg RUST_REPO=https://github.com/rust-lang/rust \
    --build-arg HAIKUPORTS_URL=https://eu.hpkg.haiku-os.org/haikuports/master/x86_gcc2/current/ \
    --build-arg INSTALL_PACKAGES="openssl_x86 openssl_x86_devel nghttp2_x86 nghttp2_x86_devel" \
    --build-arg RUST_XPY_COMMAND=dist \
    --build-arg RUST_XPY_CONFIG=configs/config-stable-x86.toml \
    --tag rust-haiku-x86_gcc2h:1.81.0 .
```

# 1.81.0 for x86_64 on r1beta5
```bash
podman build --build-arg HAIKU_CROSS_COMPILER_TAG=x86_64-r1beta5 \
    --build-arg RUST_REV=1.81.0 \
    --build-arg RUST_REPO=https://github.com/rust-lang/rust \
    --build-arg HAIKUPORTS_URL=https://eu.hpkg.haiku-os.org/haikuports/master/x86_64/current/ \
    --build-arg INSTALL_PACKAGES="openssl openssl_devel nghttp2 nghttp2_devel" \
    --build-arg RUST_XPY_COMMAND=dist \
    --build-arg RUST_XPY_CONFIG=configs/config-stable-x86_64.toml \
    --tag rust-haiku-x86_64:1.81.0 .
```

# 1.83.0 for x86 on r1beta5
```bash
podman build --build-arg HAIKU_CROSS_COMPILER_TAG=x86_gcc2h-r1beta5 \
    --build-arg RUST_REV=1.83.0 \
    --build-arg RUST_REPO=https://github.com/rust-lang/rust \
    --build-arg HAIKUPORTS_URL=https://eu.hpkg.haiku-os.org/haikuports/master/x86_gcc2/current/ \
    --build-arg INSTALL_PACKAGES="openssl_x86 openssl_x86_devel nghttp2_x86 nghttp2_x86_devel" \
    --build-arg RUST_XPY_COMMAND=dist \
    --build-arg RUST_XPY_CONFIG=configs/config-stable-x86-131075.toml \
    --tag rust-haiku-x86_gcc2h:1.83.0 .
```

# 1.83.0 for x86_64 on r1beta5
```bash
podman build --build-arg HAIKU_CROSS_COMPILER_TAG=x86_64-r1beta5 \
    --build-arg RUST_REV=1.83.0 \
    --build-arg RUST_REPO=https://github.com/rust-lang/rust \
    --build-arg HAIKUPORTS_URL=https://eu.hpkg.haiku-os.org/haikuports/master/x86_64/current/ \
    --build-arg INSTALL_PACKAGES="openssl openssl_devel nghttp2 nghttp2_devel" \
    --build-arg RUST_XPY_COMMAND=dist \
    --build-arg RUST_XPY_CONFIG=configs/config-stable-x86_64-131075.toml \
    --tag rust-haiku-x86_64:1.83.0 .
```

# 1.89.0 for x86 on r1beta5
```bash
podman build --build-arg HAIKU_CROSS_COMPILER_TAG=x86_gcc2h-r1beta5 \
    --build-arg RUST_REV=1.89.0 \
    --build-arg RUST_REPO=https://github.com/rust-lang/rust \
    --build-arg HAIKUPORTS_URL=https://eu.hpkg.haiku-os.org/haikuports/master/x86_gcc2/current/ \
    --build-arg INSTALL_PACKAGES="openssl3_x86 openssl3_x86_devel nghttp2_x86 nghttp2_x86_devel" \
    --build-arg RUST_XPY_COMMAND=dist \
    --build-arg RUST_XPY_CONFIG=configs/config-stable-x86-131075.toml \
    --tag rust-haiku-x86_gcc2h:1.89.0 .
```

# 1.89.0 for x86_64 on r1beta5
```bash
podman build --build-arg HAIKU_CROSS_COMPILER_TAG=x86_64-r1beta5 \
    --build-arg RUST_REV=1.89.0 \
    --build-arg RUST_REPO=https://github.com/rust-lang/rust \
    --build-arg HAIKUPORTS_URL=https://eu.hpkg.haiku-os.org/haikuports/master/x86_64/current/ \
    --build-arg INSTALL_PACKAGES="openssl3 openssl3_devel nghttp2 nghttp2_devel" \
    --build-arg RUST_XPY_COMMAND=dist \
    --build-arg RUST_XPY_CONFIG=configs/config-stable-x86_64-131075.toml \
    --tag rust-haiku-x86_64:1.89.0 .
```

# Nightly
```bash
podman build --build-arg HAIKU_CROSS_COMPILER_TAG=x86_64-r1beta4 \
    --build-arg RUST_REV=master \
    --build-arg RUST_REPO=https://github.com/rust-lang/rust \
    --build-arg HAIKUPORTS_URL=https://eu.hpkg.haiku-os.org/haikuports/master/x86_64/current/ \
    --build-arg INSTALL_PACKAGES="openssl3 openssl3_devel nghttp2 nghttp2_devel" \
    --build-arg SOURCE_FIXUP_SCRIPT=patches/fix-nightly.sh \
    --build-arg RUST_XPY_COMMAND=build \
    --build-arg RUST_XPY_CONFIG=configs/config-nightly-x86_64.toml \
    --tag rust-haiku-x86_64:nightly .
```
