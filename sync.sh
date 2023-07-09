# Remove
rm -rf hardware/st/nfc
rm -rf hardware/xiaomi
rm -rf packages/resources/devicesettings
rm -rf vendor/qcom/opensource/interfaces
rm -rf vendor/qcom/opensource/fm-commonsys

# Device
git clone -b 13 https://github.com/parixxshit/device_xiaomi_spes.git device/xiaomi/spes
git clone -b 13 https://github.com/parixxshit/device_xiaomi_sm6225-common.git device/xiaomi/sm6225-common

git clone -b 13 https://github.com/parixxshit/device_xiaomi_spes-kernel.git device/xiaomi/spes-kernel
git clone -b thirteen https://github.com/PixelExperience-Devices/kernel_xiaomi_sm6225.git kernel/xiaomi/sm6225

git clone -b thirteen https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_xiaomi_spes.git vendor/xiaomi/spes
git clone -b thirteen https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_xiaomi_sm6225-common.git vendor/xiaomi/sm6225-common

# Packages
git clone -b thirteen https://github.com/PixelExperience/packages_resources_devicesettings.git packages/resources/devicesettings

# Hardware
git clone -b thirteen https://github.com/PixelExperience/hardware_st_nfc.git hardware/st/nfc
git clone -b thirteen https://github.com/PixelExperience/hardware_xiaomi.git hardware/xiaomi

git clone -b thirteen https://github.com/PixelExperience/hardware_qcom-caf_bengal_gps.git hardware/qcom-caf/bengal/gps
git clone -b thirteen https://github.com/PixelExperience/hardware_qcom-caf_bengal_media.git hardware/qcom-caf/bengal/media
git clone -b thirteen https://github.com/PixelExperience/hardware_qcom-caf_bengal_audio.git hardware/qcom-caf/bengal/audio
git clone -b thirteen https://github.com/PixelExperience/hardware_qcom-caf_bengal_display.git hardware/qcom-caf/bengal/display

# Device (QCOM)
git clone -b 13 https://github.com/parixxshit/device_qcom_common.git device/qcom/common
git clone -b thirteen https://github.com/PixelExperience-Devices/device_qcom_qssi.git device/qcom/qssi
git clone -b thirteen https://github.com/PixelExperience-Devices/device_qcom_wlan.git device/qcom/wlan
git clone -b 13 https://github.com/parixxshit/device_qcom_common-sepolicy.git device/qcom/common-sepolicy
git clone -b thirteen https://github.com/PixelExperience-Devices/device_qcom_vendor-common.git device/qcom/vendor-common

# Vendor (QCOM)
git clone -b thirteen https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_qcom_common.git vendor/qcom/common
git clone -b thirteen https://github.com/PixelExperience/vendor_qcom_opensource_core-utils.git vendor/qcom/opensource/core-utils
git clone -b thirteen https://github.com/PixelExperience/vendor_qcom_opensource_interfaces.git vendor/qcom/opensource/interfaces

git clone -b thirteen https://github.com/PixelExperience/vendor_qcom_opensource_commonsys_dpm.git vendor/qcom/opensource/commonsys/dpm
git clone -b thirteen https://github.com/PixelExperience/vendor_qcom_opensource_commonsys-intf_bluetooth.git vendor/qcom/opensource/commonsys-intf/bluetooth

# Patch
cd vendor/derp
git fetch https://github.com/parixxshit/vendor_derp.git
git cherry-pick 681503f496ff04f41b2718fc85f4b435f1e6f9ca^..657f4a52b1acdcafbe68abb1fc05eba30363371f
cd ../..

# . build/envsetup.sh
# lunch derp_spes-user && mka derp
