#!/bin/bash

# Define color codes
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Define a function to simplify cloning
clone_repo() {
    echo -e "${GREEN}Cloning repository: $2 (Branch: $1)${NC}"
    git clone --depth=1 -b "$1" "$2" "$3"
}

# Remove unnecessary directories
echo -e "${RED}Removing unnecessary directories...${NC}"
directories=(
    "hardware/st/nfc"
    "packages/resources/devicesettings"
    "vendor/qcom/opensource/interfaces"
    "vendor/qcom/opensource/fm-commonsys"
)

for dir in "${directories[@]}"; do
    echo -e "${RED}Removing directory: $dir${NC}"
    rm -rf "$dir"
done

# Clone repositories

# Device
clone_repo "13" "https://github.com/parixshit-ci/device_xiaomi_spes.git" "device/xiaomi/spes"
clone_repo "13" "https://github.com/parixshit-ci/device_xiaomi_sm6225-common.git" "device/xiaomi/sm6225-common"

clone_repo "thirteen" "https://github.com/PixelExperience-Devices/kernel_xiaomi_sm6225.git" "kernel/xiaomi/sm6225"
clone_repo "thirteen" "https://github.com/PixelExperience-Devices/device_xiaomi_spes-kernel.git" "device/xiaomi/spes-kernel"

clone_repo "thirteen" "https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_xiaomi_spes.git" "vendor/xiaomi/spes"
clone_repo "thirteen" "https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_xiaomi_sm6225-common.git" "vendor/xiaomi/sm6225-common"

# Packages
clone_repo "thirteen" "https://github.com/PixelExperience/packages_resources_devicesettings.git" "packages/resources/devicesettings"

# Hardware
clone_repo "thirteen" "https://github.com/PixelExperience/hardware_st_nfc.git" "hardware/st/nfc"
clone_repo "thirteen" "https://github.com/PixelExperience/hardware_xiaomi.git" "hardware/xiaomi"
clone_repo "thirteen" "https://github.com/PixelExperience/hardware_qcom-caf_bengal_gps.git" "hardware/qcom-caf/bengal/gps"
clone_repo "thirteen" "https://github.com/PixelExperience/hardware_qcom-caf_bengal_media.git" "hardware/qcom-caf/bengal/media"
clone_repo "thirteen" "https://github.com/PixelExperience/hardware_qcom-caf_bengal_audio.git" "hardware/qcom-caf/bengal/audio"
clone_repo "thirteen" "https://github.com/PixelExperience/hardware_qcom-caf_bengal_display.git" "hardware/qcom-caf/bengal/display"

# Device (QCOM)
clone_repo "13" "https://github.com/parixshit-ci/device_qcom_common.git" "device/qcom/common"
clone_repo "thirteen" "https://github.com/PixelExperience-Devices/device_qcom_qssi.git" "device/qcom/qssi"
clone_repo "thirteen" "https://github.com/PixelExperience-Devices/device_qcom_wlan.git" "device/qcom/wlan"
clone_repo "thirteen" "https://github.com/parixshit-ci/device_qcom_common-sepolicy.git" "device/qcom/common-sepolicy"
clone_repo "thirteen" "https://github.com/PixelExperience-Devices/device_qcom_vendor-common.git" "device/qcom/vendor-common"

# Vendor (QCOM)
clone_repo "thirteen" "https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_qcom_common.git" "vendor/qcom/common"
clone_repo "thirteen" "https://github.com/PixelExperience/vendor_qcom_opensource_core-utils.git" "vendor/qcom/opensource/core-utils"
clone_repo "thirteen" "https://github.com/PixelExperience/vendor_qcom_opensource_interfaces.git" "vendor/qcom/opensource/interfaces"
clone_repo "thirteen" "https://github.com/PixelExperience/vendor_qcom_opensource_fm-commonsys.git" "vendor/qcom/opensource/fm-commonsys"
clone_repo "thirteen" "https://github.com/PixelExperience/vendor_qcom_opensource_commonsys_dpm.git" "vendor/qcom/opensource/commonsys/dpm"
clone_repo "thirteen" "https://github.com/PixelExperience/vendor_qcom_opensource_commonsys-intf_bluetooth.git" "vendor/qcom/opensource/commonsys-intf/bluetooth"

# . build/envsetup.sh
# lunch derp_spes-user
# mka derp

# cd .. && chmod 600 ssh-key
# scp -i ssh-key evoX/out/target/product/spes/evolution_spes-ota* parixshit@frs.sourceforge.net:/home/frs/project/parixshit/Evolution
