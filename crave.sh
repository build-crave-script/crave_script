
rm -rf device/xiaomi/mojito
rm -rf device/xiaomi/sm6150-common
rm -rf kernel/xiaomi/mojito
rm -rf hardware/xiaomi
rm -rf vendor/xiaomi/mojito
rm -rf vendor/xiaomi/sm6150-common

repo init --depth=1 --no-repo-verify --git-lfs -u https://github.com/LineageOS/android.git -b lineage-22.2 --git-lfs
/opt/crave/resync.sh

rm -rf device/xiaomi/mojito
rm -rf device/xiaomi/sm6150-common
rm -rf kernel/xiaomi/mojito
rm -rf hardware/xiaomi
rm -rf vendor/xiaomi/mojito
rm -rf vendor/xiaomi/sm6150-common

# device/xiaomi/mojito
git clone https://github.com/BlissRoms-Devices/device_xiaomi_mojito -b wip device/xiaomi/mojito

# device/xiaomi/sm6150-common
git clone https://github.com/BlissRoms-Devices/android_device_xiaomi_sm6150-common -b wip device/xiaomi/sm6150-common

# kernel/xiaomi/mojito
git clone https://github.com/BlissRoms-Devices/kernel_xiaomi_mojito --depth 1 -b inline-rom kernel/xiaomi/mojito

# hardware/xiaomi
git clone https://github.com/BlissRoms-Devices/android_hardware_xiaomi --depth 1 -b mojito hardware/xiaomi

# vendor/xiaomi/mojito
git clone https://gitlab.com/romgharti/android_vendor_xiaomi_mojito --depth 1 -b 15 vendor/xiaomi/mojito

# vendor/xiaomi/sm6150-common
git clone https://gitlab.com/romgharti/android_vendor_xiaomi_sm6150-common --depth 1 -b 15 vendor/xiaomi/sm6150-common
