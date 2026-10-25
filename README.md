# Infinity Onyx Development

Reusable development work by **lunatik_kenny / KENNYx0903** for Project Infinity X on **onyx** (POCO F7 / Redmi Turbo 4 Pro).

This is a developer source and integration reference, not a complete Android source tree or a flashable package. It captures accepted work through **R8, 25 October 2026**, while keeping canceled experiments out of the supported feature set.

## Start here

1. Read [compatibility and integration](docs/INTEGRATION.md).
2. Pick a component below. Port helper classes and call sites into your own source tree when possible.
3. For APK-level work, use the exact baseline hashes and [R8 bytecode deltas](patches/r8), not filenames alone.
4. Run `python3 tools/verify_repository.py` to validate the exported source inventory. This does not flash or contact a device.
5. Follow the [device validation matrix](docs/VALIDATION.md). Repository checks are not a substitute for testing your ROM.

| Component | Contents | Notes |
| --- | --- | --- |
| [Blur](components/blur) | Three modes, radius/darkness, Settings integration, notification/volume/FOD material, Google outer panel | ViewRoot/SurfaceControl lifetime handling included |
| [AOD and pocket](components/aod-pocket) | NonUi pocket gating, FOD and double-tap handling, ordinary OEM pocket protection, transition references | Exact accepted bytecode is provided separately from older readable Java references |
| [Freeform](components/freeform) | Offscreen movement, integrated recovery strips, animation, YouTube coordinate compatibility | Recovery strips share window decor; not separate overlays |
| [Games and sidebar](components/games-sidebar) | Preset persistence, FPS tile/counter hooks, category/global gating, sidebar styling | Integration recipes depend on the matching GameSpace/SystemUI version |
| [Launcher](components/launcher) | Label condensation toggle, icon normalization, widgets | Experimental icon and popup blur canceled |
| [Touch sounds](components/input-sounds) | Infinity / Xiaomi / AOSP selection, immediate SoundPool reload | Sound assets obtained separately |
| [Lock haptics](components/lock-haptics) | Event-driven native ScreenLock handler and SystemUI bridge | OEM waveform not redistributed |
| [Optional Google packages](components/optional-google) | Installation consent policy integration | No Google APKs included |
| [Localization](components/localization) | Russian string/resource patches, English labels for new controls | Resource IDs are baseline-specific |
| [Kernel components](components/kernel) | AOD retention source, CN-only amplifier patch, adapted SUSFS source | Separate GPL-2.0 licensing and exact kernel ABI requirements |
| [Additional integration](components/additional-integration) | Camera RAW, display/charge configuration, native deltas, Google integration recipes | Exact input/output hash-bound recipes; no proprietary library payloads |
| [ROM tooling](tools/rom-reference) | EROFS/AVB/payload/OTA packaging and verification recipes | Historical workspace references, not a one-command public ROM build |

## Release identity

The final R8 ROM SHA-256 is `ffd1822c968dbca4166933fc0dc25b9e870d7caee30fded54de342b603e60351`.
[release/r8-manifest.json](release/r8-manifest.json) records accepted component IDs, image paths and hashes, including the final blur surface-lifecycle fix. Several IDs deliberately refer to the same final APK: they track accumulated changes, not independent interchangeable packages.

The owner reported that R8 boots. Packaging checks passed for all 44 payload partitions, AVB, ZIP CRCs and the OTA signature. This is **not** a claim that every feature has been regression-tested on every device or kernel.

## Scope and limitations

R8 uses an existing Android 16 ROM and an existing 6.6.82 onyx kernel; this repository does not contain their full source. Bytecode hooks, resource IDs, hidden APIs, sensor types and sysfs nodes must be reviewed when porting. Some historical recipes require earlier local APK checkpoints that are intentionally not distributed. See [reproduction status](docs/REPRODUCTION.md) before running any recipe.

Excluded: ROM/APK/firmware binaries, proprietary haptic waveform and Xiaomi sound assets, signing keys, personal device/subscriber logs, screenshots containing personal content, canceled blur preview, themed-icon/popup blur, new power-button shortcuts and Droidspaces support. AOD shutdown after prolonged darkness was discussed but **not implemented**.

## License and attribution

Original standalone work is available under Apache-2.0 unless a file or component states otherwise. Kernel components and SUSFS retain GPL-2.0 terms. Patches do not relicense their upstream targets. See [NOTICE.md](NOTICE.md) and [licensing map](docs/LICENSING.md).

Contributions: describe the baseline, preserve attribution, and include device validation evidence without private logs. See [CONTRIBUTING.md](CONTRIBUTING.md).
