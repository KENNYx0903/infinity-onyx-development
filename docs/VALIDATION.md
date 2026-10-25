# Validation matrix

Repository integrity and Android runtime behavior are separate checks.

Offline transplant results are in [release/transplant-verification.json](../release/transplant-verification.json): five base-to-R8 smali deltas were actually applied to disposable baseline trees and compared to final R8 class text, and all four native delta results matched their recorded output hashes. A tampered native input was rejected before writing an output.

## Packaging evidence for R8

- All 44 payload partitions reconstructed and hashed.
- 1,386 payload operations decoded using recovery-compatible XZ Embedded.
- Changed EROFS file content and AVB chain checked.
- ZIP CRCs, streaming offsets and metadata checked.
- Whole-file OTA signature verified.
- Owner subsequently reported the system running. The source-only repository has not been built as an independent ROM.

## Required on-device checks after porting

| Area | Checks |
| --- | --- |
| AOD | Cold boot/unlock, first stage and 30 Hz handoff, bright/dim transitions, minute update, notifications, burn-in shift, fingerprint from 30 Hz |
| Pocket | AOD pocket entry, single FOD touch and double tap while blocked, exit, successful FOD at 30 Hz; repeat; ordinary screen-off pocket mode; physical power remains usable |
| Sleep | Unplugged AOD vs screen-off paired tests with stable lighting; report duration, charge-counter delta, battery capacity and CPU/CX/DDR/DSP residency separately; keep notification conditions identical |
| Blur | Modes 1/2/3, darkness/radius, reset/copy dialogs, light/dark themes, bouncer, notifications/long-press opening and closing, volume collapse/expand/outside tap, FOD, QSB app-return/screenshot/surface recreation |
| Games | Global/category switches, remove game, close game menu, background/foreground, exit game restores previous performance profile, FPS tile from both entry points |
| Freeform | Drag through all four edges, return with integrated strip, resize, touch mapping and YouTube bottom navigation before/after movement |
| Input | Three tap sounds, system toggle off, reboot persistence, no change to other sound effects; lock haptic strength/off and repeat-lock behavior |
| CN amplifier | CN vs GL loader branch, normal call earpiece, proximity, stereo speakers, Bluetooth, several reboots; retain original non-CN behavior |

Previous tests were device-specific and often user-assisted. Do not infer guaranteed battery consumption, hardware-wide stability or fixed subscriber behavior from a packaging pass. No personal call/device traces are distributed.
