# Remove
rm -rf hardware/st/nfc
rm -rf vendor/qcom/opensource/commonsys/display
rm -rf vendor/qcom/opensource/commonsys-intf/display

# Device
git clone -b tokui https://github.com/parixshit-ci/device_xiaomi_spes.git device/xiaomi/spes
git clone -b tokui https://github.com/parixshit-ci/device_xiaomi_sm6225-common.git device/xiaomi/sm6225-common
git clone -b topaz https://github.com/aospa/android_device_xiaomi_spes-kernel.git device/xiaomi/spes-kernel
git clone -b tokui https://github.com/parixshit-ci/proprietary_vendor_xiaomi.git vendor/xiaomi

# Hardware
git clone -b topaz https://github.com/aospa/android_hardware_xiaomi.git hardware/xiaomi
git clone -b topaz https://github.com/AOSPA/android_hardware_st_nfc.git hardware/st/nfc
git clone -b topaz-865 https://github.com/aospa/android_hardware_qcom_gps.git hardware/qcom/gps
git clone -b topaz-865 https://github.com/aospa/android_hardware_qcom_media.git hardware/qcom/media
git clone -b topaz-865 https://github.com/aospa/android_hardware_qcom_display.git hardware/qcom/display

# Packages
git clone -b topaz https://github.com/aospa/android_packages_resources_devicesettings.git packages/resources/devicesettings

# Vendor
git clone -b topaz-bengal https://github.com/aospa/android_hardware_qcom_audio.git vendor/qcom/opensource/audio-hal/primary-hal
git clone -b topaz https://github.com/aospa/android_vendor_qcom-opensource_display-commonsys.git vendor/qcom/opensource/commonsys/display
git clone -b topaz https://github.com/aospa/android_vendor_qcom_opensource_commonsys-intf_display.git vendor/qcom/opensource/commonsys-intf/display
