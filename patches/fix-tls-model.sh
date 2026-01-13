#!/bin/bash

echo "Patching Rust bootstrap to disable initial-exec TLS model in rustc_driver"

cd /build/rust
cat << EOF | patch -p1
From aa30c8544afe5ced22a9c760ab4030084f1f4c9e Mon Sep 17 00:00:00 2001
From: LekKit <50500857+LekKit@users.noreply.github.com>
Date: Tue, 13 Jan 2026 11:31:13 +0200
Subject: [PATCH] Disable initial-exec TLS on Haiku

---
 src/bootstrap/src/core/builder/cargo.rs | 1 +
 1 file changed, 1 insertion(+)

diff --git a/src/bootstrap/src/core/builder/cargo.rs b/src/bootstrap/src/core/builder/cargo.rs
index 99044e2a..61265450 100644
--- a/src/bootstrap/src/core/builder/cargo.rs
+++ b/src/bootstrap/src/core/builder/cargo.rs
@@ -1043,6 +1043,7 @@ fn cargo(
         if !mode.must_support_dlopen()
             && !target.triple.starts_with("powerpc-")
             && !target.triple.contains("cygwin")
+            && !target.triple.contains("haiku")
         {
             cargo.env("RUSTC_TLS_MODEL_INITIAL_EXEC", "1");
         }
--
2.52.0
EOF
