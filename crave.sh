
rm -rf device/xiaomi/mojito
rm -rf device/xiaomi/sm6150-common
rm -rf kernel/xiaomi/mojito
rm -rf hardware/xiaomi
rm -rf vendor/xiaomi/mojito
rm -rf vendor/xiaomi/sm6150-common

repo init --depth=1 --no-repo-verify --git-lfs -u https://github.com/ProjectInfinity-X/manifest -b 16 -g default,-mips,-darwin,-notdefault
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all)

rm -rf device/xiaomi/mojito
rm -rf device/xiaomi/sm6150-common
rm -rf kernel/xiaomi/mojito
rm -rf hardware/xiaomi
rm -rf vendor/xiaomi/mojito
rm -rf vendor/xiaomi/sm6150-common

git clone https://github.com/Infinity-X-Devices/android_device_xiaomi_mojito.git -b 16 device/xiaomi/mojito
git clone https://github.com/Infinity-X-Devices/device_xiaomi_sm6150-common.git -b 16 device/xiaomi/sm6150-common
git clone https://github.com/Infinity-X-Devices/kernel_xiaomi_mojito.git --depth 1 -b inline-rom kernel/xiaomi/mojito
git clone https://gitlab.com/romgharti/android_vendor_xiaomi_mojito.git --depth 1 -b 16 vendor/xiaomi/mojito
git clone https://gitlab.com/romgharti/android_vendor_xiaomi_sm6150-common.git --depth 1 -b 16 vendor/xiaomi/sm6150-common
git clone https://github.com/BlissRoms-Devices/android_hardware_xiaomi.git --depth 1 -b mojito hardware/xiaomi

. build/envsetup.sh
lunch infinity-mojito-user
bacon
