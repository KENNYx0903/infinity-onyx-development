# CN-only amplifier initialization cleanup

Upstream source: xiaomi-onyx-dev/android_kernel_xiaomi_sm8735-modules at 556221b539c13b830ff2b8b1600b3dd54be3c9d8, qcom/opensource/audio-kernel/asoc/codecs/aw882xx.

Apply 0003-cn-only-gpio-cleanup.patch to the matching driver. The loader passes `cn_gpio_fix=1` only for hardware region `ro.boot.hwc=CN`. Non-CN follows the original probe path. It is hardware region, not UI language or SIM country.

The patch groups GPIO resources and releases the group on the relevant probe/error path so a dummy/failed codec does not retain resources needed by the real amplifier. Build against your exact kernel/module ABI and preserve module signing requirements. No ready-made .ko is distributed. It is a device-specific fix with observed subscriber improvement, not proof of the cause of every proximity/audio failure.

The loader is supplied as a minimal diff, preserving original script attribution/licensing. Kernel changes use GPL-2.0 terms. Do not combine earlier unconditional patches with the final CN-only patch.
