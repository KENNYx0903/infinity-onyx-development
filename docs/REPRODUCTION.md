# Reproduction status

There are three distinct kinds of material:

- `components/*/src`: authored helper source. Integration requires Android platform APIs and the matching upstream classes; this is not a standalone application.
- `patches/r8`: deterministic original-ROM-to-R8 DEX deltas plus selected added helper classes. Baseline hashes, class counts and excluded added classes are recorded. Resource/native changes are separate. Examine excluded class names before assuming complete coverage.
- `integration-reference` and `tools/rom-reference`: historical transformation recipes preserved to explain the implementation. Several depend on intermediate APKs, decoded trees, external SDK tools or an earlier ROM ZIP. These dependencies are deliberately not bundled, so these scripts are **not advertised as turnkey**.

`components/aod-pocket/historical-reference` contains older readable Java. Accepted R8 may include later smali edits not reflected there; the final DEX delta and source-index provenance take precedence for exact behavior.

## Inputs you provide

- Matching ROM APKs/JARs and resource tables; your own Android build tree is preferred.
- Android SDK API 36, JDK, D8, smali/baksmali 3.0.9, apktool and your own signing configuration if modifying APKs.
- For full ROM work: an appropriate EROFS toolchain, AVB tooling, protobuf support, original partition metadata and your own AVB/payload/OTA keys.
- For kernel modules: exact source/config/headers, exported symbol versions and compatible toolchain. Matching `uname` alone is insufficient.
- For ScreenLock209 and Xiaomi tap sound: your own authorized source of OEM assets; this repository intentionally does not contain them.

## What has been tested here

Local repository checks validate inventory hashes, syntax, JSON, large/binary-file exclusion and obvious secret patterns. They do not compile Android or prove that a source-tree port is behaviorally equivalent. R8 packaging and user device observations are described separately in VALIDATION.md.

The public tree is a transplant kit and implementation archive. It cannot by itself regenerate a byte-identical R8 ZIP without excluded baseline inputs, intermediate integration and signing material.
