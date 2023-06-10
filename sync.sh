# Remove
rm -rf vendor/qcom/opensource/commonsys/display
rm -rf vendor/qcom/opensource/commonsys-intf/display

# Device
git clone -b tiramisu https://github.com/parixshit-ci/device_xiaomi_spes.git device/xiaomi/spes
git clone -b tiramisu https://github.com/parixshit-ci/device_xiaomi_sm6225-common.git device/xiaomi/sm6225-common
git clone -b thirteen https://github.com/aospa/android_device_xiaomi_spes-kernel.git device/xiaomi/spes-kernel
git clone -b tiramisu https://github.com/parixshit-ci/proprietary_vendor_xiaomi.git vendor/xiaomi

# Hardware
git clone -b thirteen https://github.com/aospa/android_hardware_xiaomi.git hardware/xiaomi
git clone -b thirteen https://github.com/aospa/android_hardware_qcom_gps.git hardware/qcom/gps
git clone -b thirteen https://github.com/aospa/android_hardware_qcom_media.git hardware/qcom/media
git clone -b thirteen https://github.com/aospa/android_hardware_qcom_display.git hardware/qcom/display

# Vendor
git clone -b thirteen https://github.com/aospa/android_vendor_qcom-opensource_display-commonsys.git vendor/qcom/opensource/commonsys/display
git clone -b thirteen https://github.com/aospa/android_vendor_qcom_opensource_commonsys-intf_display.git vendor/qcom/opensource/commonsys-intf/display
