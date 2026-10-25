# AOD and pocket protection

The accepted AOD retains two hardware brightness levels and DOZE_SUSPEND at 30 Hz. NonUi handles confirmed pocket state without reintroducing continuous ultrasound. Ordinary non-AOD pocket protection selects Xiaomi OEM sensor type 33171095, version 2, with a bounded wake grace period.

PocketFingerprintGate blocks UI/FOD/Doze wake paths while preserving the native authentication session. PocketWakeGate observes Secure `lunatik_aod_pocket_block`, disables the touchscreen FOD gesture in the pocket, filters only touchscreen wake keys and rearms the driver after exit. Physical power keys are not filtered. The onyx sysfs path and NVT device name are device-specific. Cancellation/restart of the biometric session caused regressions in earlier trials: do not restore those prototypes.

PocketResume120 returns through the first dozing UI phase before the normal handoff. Test both suppressed touches and double taps inside the pocket; a no-touch test alone previously missed the failure. Exact current hooks and custom helper bytecode are in patches/r8/SystemUI and patches/r8/services. Historical Java is labeled separately and is not the final authority.
