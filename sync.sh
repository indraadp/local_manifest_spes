# Project 404 - https://github.com/P-404

# Remove
rm -rf hardware/st/nfc
rm -rf packages/apps/Aperture
rm -rf vendor/qcom/opensource/commonsys/fm
rm -rf vendor/qcom/opensource/data-ipa-cfg-mgr-legacy

# Device
git clone -b tokui https://github.com/parixxshit/device_xiaomi_spes.git device/xiaomi/spes
git clone -b topaz https://github.com/ThankYouMario/proprietary_vendor_xiaomi.git vendor/xiaomi
git clone -b topaz https://github.com/AOSPA/android_device_xiaomi_spes-kernel.git device/xiaomi/spes-kernel
git clone -b topaz https://github.com/AOSPA/android_device_xiaomi_sm6225-common.git device/xiaomi/sm6225-common
git clone -b topaz https://github.com/CHRISL7/android_device_xiaomi_sm6225-common-miuicamera.git device/xiaomi/sm6225-common-miuicamera
git clone -b sm6225 https://gitlab.com/ThankYouMario/proprietary_vendor_xiaomi_surya-miuicamera.git vendor/xiaomi/sm6225-common-miuicamera

# Packages
git clone -b topaz https://github.com/AOSPA/android_packages_resources_devicesettings.git packages/resources/devicesettings

# Hardware
git clone -b topaz https://github.com/AOSPA/android_hardware_st_nfc.git hardware/st/nfc
git clone -b topaz https://github.com/AOSPA/android_hardware_xiaomi.git hardware/xiaomi

git clone -b topaz-865 https://github.com/AOSPA/android_hardware_qcom_media.git hardware/qcom/media
git clone -b topaz-865 https://github.com/AOSPA/android_hardware_qcom_display.git hardware/qcom/display
git clone -b topaz-legacy-component https://github.com/AOSPA/android_hardware_qcom_gps.git hardware/qcom/gps

# Device (QCOM)
git clone -b topaz https://github.com/AOSPA/android_device_qcom_common.git device/qcom/common

# Vendor (QCOM)
git clone -b topaz https://github.com/ThankYouMario/proprietary_vendor_qcom_common.git vendor/qcom/common
git clone -b topaz-bengal https://github.com/AOSPA/android_hardware_qcom_audio.git vendor/qcom/opensource/audio-hal/primary-hal
git clone -b topaz-legacy https://github.com/AOSPA/android_vendor_qcom_opensource_data-ipa-cfg-mgr.git vendor/qcom/opensource/data-ipa-cfg-mgr-legacy

# Patch
cd vendor/qcom/opensource/interfaces
git fetch https://github.com/PixelExperience/vendor_qcom_opensource_interfaces.git
git cherry-pick 0a1e849
cd ../../../..

# source build/envsetup.sh
# lunch p404_spes-user
# make bacon
