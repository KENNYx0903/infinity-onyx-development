SUSFS LKM source and reproduction inputs. GPL-2.0-only.
Adaptation: lunatik_kenny. Upstream: https://github.com/inforcqb/susfs4ksu-lkm
Upstream revision: 484562df2012c051954d0033a91d76fbe45d2cca.
Complete adapted module C/header/Makefile sources are in kernel/.
Freestanding loader source is in loader.c. It rejects load failures without vermagic retries.
Headers are the target kernel exported kheaders archive. The full target kernel source revision remains unavailable. The ROM kernel itself is unmodified.
Build uses exact Android Clang 21 r563880c build 14054515 from AOSP prebuilts commit 531a564ba5426707dee226eccb19f104a7af5a5f.
Prepared Kbuild infrastructure: ghcr.io/ylarod/ddk-min:android15-6.6-20260828.
See prepare_exact.py for overlaying exported headers onto that DDK, then build with:
make -C <prepared-out> M=<kernel-source-directory> ARCH=arm64 LLVM=1 LLVM_IAS=1 CONFIG_DEBUG_INFO_BTF_MODULES= CONFIG_STACKPROTECTOR= CONFIG_STACKPROTECTOR_STRONG= CONFIG_STACKPROTECTOR_PER_TASK= CONFIG_CFI_CLANG= KCFLAGS='-fno-stack-protector -fno-sanitize=kcfi -mbranch-protection=bti' modules
The exact target config is in the exported headers. Do not regenerate it with generic DDK defaults.
Private fs/mount.h from Android common android15-6.6.82_r00 is included as a reference input; match it in prepared source/fs/mount.h.
No manager module or autostart installer is distributed in this source archive.
