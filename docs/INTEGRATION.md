# Compatibility and integration

## Baseline

Development target: onyx POCO F7 / Redmi Turbo 4 Pro, Project Infinity X 3.12, Android 16 / API 36, existing kernel `6.6.82-4k-ge4d30c77ca39-dirty`.

Use `patches/r8/<component>/baseline.json` for exact original APK/JAR and final R8 hashes. The patches compare DEX class text, including harmless assembler encoding/default-field changes in bundled open-source dependencies; APK resources, native libraries, SELinux and init changes must be integrated separately. They are not binary APK patches.

## Preferred source-tree port

1. Locate the equivalent classes in your SystemUI, Settings, Launcher and framework source.
2. Copy the helper under the package declared in its Java file, not its historical folder name.
3. Translate the call-site edits in integration-reference scripts / smali deltas into normal source changes. Preserve lifecycle ordering and cancellation paths.
4. Translate Settings resource IDs and binary XML changes into your own resources. Do not reuse hardcoded resource IDs across builds.
5. Integrate only the relevant init, SELinux and device configuration. Boot reference scripts contain device-specific assumptions; they are not generic init templates.
6. Build with your existing product signing configuration. Never use or request the author's platform keys.
7. Validate on your target. Hidden API reflection and SurfaceControl APIs can change across releases.

## APK-level integration

Decode the matching baseline DEX using one consistent baksmali version. Verify SHA-256 first. The R8 deltas use smali 3.0.9 output. Apply modifications and added helper classes into the corresponding DEX trees; use `class-map.json` to preserve the accepted class-to-DEX mapping. The included helper files are an exact bytecode reference, not an instruction to merge all DEX into one.

`tools/apply_smali_patch.py` performs a hash check, preflight application and an explicit local tree patch. It never signs or flashes anything. Obtain inputs from your own legally obtained ROM. Reassembly, resource changes, signatures and SELinux remain the integrator's responsibility.

Historical Python scripts expect a workspace layout beginning with `work/`. They show call sites and transformation assertions. `${ANDROID_TOOLS_ROOT}`, `${APKTOOL_JAR}` and `${WORKSPACE}` mark paths to replace, not executable shell substitution inside Python strings.
