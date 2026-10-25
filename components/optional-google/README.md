# Optional Google package installation consent

Reference patch distinguishes unattended installation of Android System Key Verifier, Android System SafetyCore and Google Play Services for AR from user-confirmed installation. Manual installation remains possible; a permanent package-name ban would violate the intended behavior.

Inspect caller identity and the installer confirmation path in your PackageInstaller/PackageManager version. No Google APKs or user data are distributed. Test both background requests and an actual manually confirmed installation. Do not rely on spoofed intent extras as proof of user consent.
