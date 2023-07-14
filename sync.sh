# Remove
rm -rf hardware/google/pixel/kernel_headers

# Clone
git clone -b 13.0 https://github.com/parixxshit/android_device_xiaomi_spes device/xiaomi/spes
git clone -b 13.0 https://github.com/parixxshit/android_vendor_xiaomi_spes vendor/xiaomi/spes
git clone --depth=1 -b 13.0 https://github.com/parixxshit/android_kernel_xiaomi_spes kernel/xiaomi/spes

# Hardware
git clone -b lineage-20 https://github.com/LineageOS/android_hardware_xiaomi.git hardware/xiaomi

# Patch
cd hardware/lineage/compat
git fetch https://github.com/Deepak5310/android_hardware_lineage_compat
git cherry-pick 16939cb
cd ../../..

# Brunch
. build/envsetup.sh
brunch lineage_spes-user
