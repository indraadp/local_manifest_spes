# Remove
rm -rf hardware/st/nfc

# Device
git clone -b lineage-20.0 https://github.com/parixxshit/device_xiaomi_spes.git device/xiaomi/spes
git clone -b lineage-20.0 https://github.com/parixxshit/device_xiaomi_sm6225-common.git device/xiaomi/sm6225-common

git clone -b thirteen https://github.com/PixelExperience-Devices/kernel_xiaomi_sm6225.git kernel/xiaomi/sm6225
git clone -b thirteen https://github.com/PixelExperience-Devices/device_xiaomi_spes-kernel.git device/xiaomi/spes-kernel

git clone -b thirteen https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_xiaomi_spes.git vendor/xiaomi/spes
git clone -b thirteen https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_xiaomi_sm6225-common.git vendor/xiaomi/sm6225-common

# Hardware
git clone -b thirteen https://github.com/PixelExperience/hardware_st_nfc.git hardware/st/nfc
git clone -b thirteen https://github.com/PixelExperience/hardware_xiaomi.git hardware/xiaomi

git clone -b thirteen https://github.com/PixelExperience/hardware_qcom-caf_bengal_gps.git hardware/qcom-caf/bengal/gps
git clone -b thirteen https://github.com/PixelExperience/hardware_qcom-caf_bengal_media.git hardware/qcom-caf/bengal/media
git clone -b thirteen https://github.com/PixelExperience/hardware_qcom-caf_bengal_audio.git hardware/qcom-caf/bengal/audio
git clone -b thirteen https://github.com/PixelExperience/hardware_qcom-caf_bengal_display.git hardware/qcom-caf/bengal/display

# Device (QCOM)
git clone -b thirteen https://github.com/PixelExperience-Devices/device_qcom_qssi.git device/qcom/qssi
git clone -b thirteen https://github.com/PixelExperience-Devices/device_qcom_wlan.git device/qcom/wlan
git clone -b thirteen https://github.com/PixelExperience-Devices/device_qcom_common.git device/qcom/common # Adapt FCM `lineage`
git clone -b thirteen https://github.com/PixelExperience-Devices/device_qcom_vendor-common.git device/qcom/vendor-common
git clone -b thirteen https://github.com/PixelExperience-Devices/device_qcom_common-sepolicy.git device/qcom/common-sepolicy # Adapt Sepolicy `lineage`

# Vendor (QCOM)
git clone -b thirteen https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_qcom_common.git vendor/qcom/common
git clone -b thirteen https://github.com/PixelExperience/vendor_qcom_opensource_core-utils.git vendor/qcom/opensource/core-utils
git clone -b thirteen https://github.com/PixelExperience/vendor_qcom_opensource_commonsys_dpm.git vendor/qcom/opensource/commonsys/dpm
git clone -b thirteen https://github.com/PixelExperience/vendor_qcom_opensource_commonsys-intf_bluetooth.git vendor/qcom/opensource/commonsys-intf/bluetooth

# Patch frameworks/base
cd frameworks/base
git fetch https://github.com/parixxshit/android_frameworks_base.git
git cherry-pick 419fa2b^..ff5239d # CLO Framework Boost (8 commits)
cd ../..

# Patch packages/resources/devicesettings
cd packages/resources/devicesettings
git fetch https://github.com/Deepak5310/android_packages_resources_devicesettings.git
git cherry-pick ac8b243^..2a3307e
cd ../../..

# Patch vendor/lineage
cd vendor/lineage
git fetch https://github.com/parixxshit/vendor_derp.git
git cherry-pick 82a4247 4edc812
cd ..

# Patch vendor/qcom/opensource/interfaces
cd qcom/opensource/interfaces
git fetch https://github.com/PixelExperience/vendor_qcom_opensource_interfaces.git
git cherry-pick 0a1e849
cd ..

# Patch vendor/qcom/opensource/fm-commonsys
cd fm-commonsys
git fetch https://github.com/PixelExperience/vendor_qcom_opensource_fm-commonsys.git
git cherry-pick 74f4211
cd ../../../..

. build/envsetup.sh
# lunch lineage_spes-userdebug && m bacon
