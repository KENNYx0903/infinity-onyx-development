# Licensing map

- New standalone Java helpers, original Python integration recipes and documentation: Apache-2.0, unless an existing notice specifies otherwise.
- AOD retention kernel source: GPL-2.0-only as marked in the source.
- Adapted SUSFS source: GPL-2.0, upstream notices and license retained in its component directory.
- Amplifier kernel patch: modifications to GPL kernel driver code; distributed with GPL-2.0 terms and the upstream source reference. The vendor module-loader diff must retain the target script's original licensing when integrated.
- DEX/smali deltas: changes to upstream components; target licensing and attribution remain in force. Most targets are Android platform code, but this is not a blanket relicense of a complete decompiled app. Added authored helper classes are identified in source-index.json.
- Framework/ROM packaging recipes reference external tools. Those tools are not vendored and remain under their own licenses.

Do not include OEM firmware, Google apps, proprietary waveforms, signing credentials or full APKs in contributions. Any future third-party source addition must include its original license and provenance.

Apache-2.0 is the default only for original work, not for every byte in this repository. In a conflict, the original component's explicit license controls.
