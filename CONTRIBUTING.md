# Contributing

Open an issue with the component, exact base commit or APK hash, device hardware variant, ROM/API/kernel versions, reproduction steps and expected behavior. Redact account details and subscriber/call data from diagnostics.

Keep changes scoped to one component. Include license/provenance for new code, update source-index hashes for intentional changes, and describe runtime tests. Preserve the mode-1 stock blur path, GL amplifier behavior and physical power-key handling.

Do not commit APKs, images, Google/OEM assets, keys, credentials, unredacted logcat, or canceled experiments as accepted features. Run `python3 tools/verify_repository.py` before sending a pull request.
