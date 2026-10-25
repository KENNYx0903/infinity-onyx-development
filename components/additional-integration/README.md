# Additional accepted integration work

This directory preserves camera RAW stream-selection logic, display-brightness calibration, native vibrator effect/strength handling, touch UI translations and Google system-app integration references. It does not include Google APKs, font files or OEM native libraries.

`native-deltas/*.json` contain only changed byte spans, exact input/output hashes and file lengths for the accepted R8 native modifications. `tools/apply_native_delta.py` refuses a different input or an existing output. These deltas are version-specific; a normal source implementation is preferable when source is available. They do not make the upstream library open source or change its redistribution terms.

`config-deltas/` contains minimal changes to the original configuration, not replacements for arbitrary newer ROM configs. Provide fonts and other referenced assets separately. Historical recipes under `reference/` retain their original workspace layout and require manual integration.

The PAL delta is the accepted R8 artifact, not a recommendation to reintroduce canceled audio-policy workarounds. Recheck the release manifest and compare call/notification routing on the target device. Full ROM generation still requires proprietary inputs and signing configuration that are not distributed.
