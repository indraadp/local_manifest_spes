# Remove
rm -rf device/qcom/common
rm -rf hardware/st/nfc
# rm -rf hardware/xiaomi
# rm -rf hardware/qcom-caf/bengal/gps
# rm -rf hardware/qcom-caf/bengal/media
# rm -rf hardware/qcom-caf/bengal/audio
# rm -rf hardware/qcom-caf/bengal/display
rm -rf vendor/qcom/opensource/interfaces
rm -rf vendor/qcom/opensource/fm-commonsys

# Device
git clone --depth=1 -b tiramisu https://github.com/parixshit-ci/device_xiaomi_spes.git device/xiaomi/spes
git clone --depth=1 -b tiramisu https://github.com/parixshit-ci/device_xiaomi_sm6225-common.git device/xiaomi/sm6225-common

git clone --depth=1 -b thirteen https://github.com/PixelExperience-Devices/kernel_xiaomi_sm6225.git kernel/xiaomi/sm6225
git clone --depth=1 -b thirteen https://github.com/PixelExperience-Devices/device_xiaomi_spes-kernel.git device/xiaomi/spes-kernel

git clone --depth=1 -b thirteen https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_xiaomi_spes.git vendor/xiaomi/spes
git clone --depth=1 -b thirteen https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_xiaomi_sm6225-common.git vendor/xiaomi/sm6225-common

# Hardware
git clone --depth=1 -b thirteen https://github.com/PixelExperience/hardware_st_nfc.git hardware/st/nfc
# git clone --depth=1 -b thirteen https://github.com/PixelExperience/hardware_xiaomi.git hardware/xiaomi
# git clone --depth=1 -b thirteen https://github.com/PixelExperience/hardware_qcom-caf_bengal_gps.git hardware/qcom-caf/bengal/gps
# git clone --depth=1 -b thirteen https://github.com/PixelExperience/hardware_qcom-caf_bengal_media.git hardware/qcom-caf/bengal/media
# git clone --depth=1 -b thirteen https://github.com/PixelExperience/hardware_qcom-caf_bengal_audio.git hardware/qcom-caf/bengal/audio
# git clone --depth=1 -b thirteen https://github.com/PixelExperience/hardware_qcom-caf_bengal_display.git hardware/qcom-caf/bengal/display

# Device (QCOM)
git clone --depth=1 -b tiramisu https://github.com/parixshit-ci/device_qcom_common.git device/qcom/common
git clone --depth=1 -b thirteen https://github.com/PixelExperience-Devices/device_qcom_qssi.git device/qcom/qssi
git clone --depth=1 -b thirteen https://github.com/PixelExperience-Devices/device_qcom_wlan.git device/qcom/wlan
git clone --depth=1 -b tiramisu https://github.com/parixshit-ci/device_qcom_common-sepolicy.git device/qcom/common-sepolicy
git clone --depth=1 -b thirteen https://github.com/PixelExperience-Devices/device_qcom_vendor-common.git device/qcom/vendor-common

# Vendor (QCOM)
git clone --depth=1 -b thirteen https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_qcom_common.git vendor/qcom/common
git clone --depth=1 -b thirteen https://github.com/PixelExperience/vendor_qcom_opensource_core-utils.git vendor/qcom/opensource/core-utils
git clone --depth=1 -b thirteen https://github.com/PixelExperience/vendor_qcom_opensource_interfaces.git vendor/qcom/opensource/interfaces
git clone --depth=1 -b thirteen https://github.com/PixelExperience/vendor_qcom_opensource_fm-commonsys.git vendor/qcom/opensource/fm-commonsys
git clone --depth=1 -b thirteen https://github.com/PixelExperience/vendor_qcom_opensource_commonsys_dpm.git vendor/qcom/opensource/commonsys/dpm
git clone --depth=1 -b thirteen https://github.com/PixelExperience/vendor_qcom_opensource_commonsys-intf_bluetooth.git vendor/qcom/opensource/commonsys-intf/bluetooth

# . build/envsetup.sh
# lunch evolution_spes-user
# mka evolution

# cd .. && chmod 600 ssh-key
# scp -i ssh-key evoX/out/target/product/spes/evolution_spes-ota* parixshit@frs.sourceforge.net:/home/frs/project/parixshit/Evolution
