# ScreenLock event-driven haptics

The accepted native handler waits on a local socket instead of running a resident Java/ART process. It validates peer credentials, responds to a lock event, applies configured intensity and restores driver state. The SystemUI bridge should trigger for the relevant unlocked-to-locked power-button transition, not every screen-off of an already locked device.

`lock_hapticd.c` expects `wave.h`. That header contains OEM waveform bytes and is deliberately NOT distributed. Supply an authorized ScreenLock209 waveform or replace the waveform playback backend with your device's supported effect API. Never use random waveform bytes or hardcoded gain assumptions from another driver.

Historical Java service variants are not the accepted production daemon. Source ports should preserve the system strength and haptics-off behavior, failure handling, gain restoration and cold-boot startup ordering. The proprietary RTP asset's absence is intentional and means this component is not self-contained for byte-identical effect playback.
