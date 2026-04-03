# repo init -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs
repo init --no-repo-verify --git-lfs -u https://github.com/ProjectInfinity-X/manifest -b 16 -g default,-mips,-darwin,-notdefault
# repo init -u https://github.com/RisingOS-Revived/android -b sixteen --git-lfs
/opt/crave/resync.sh
git clone https://github.com/Infinity-X-Devices/android_device_xiaomi_mojito.git -b 16.0 device/xiaomi/mojito
git clone https://github.com/Infinity-X-Devices/device_xiaomi_sm6150-common.git -b 16.0 device/xiaomi/sm6150-common
git clone https://github.com/Infinity-X-Devices/kernel_xiaomi_mojito --depth 1 -b inline-rorn kernel/xiaomi/mojito
git clone https://gitlab.com/mojito22/android_vendor_xiaomi_mojito.git -b qpr vendor/xiaomi/mojito
git clone https://gitlab.com/mojito22/android_vendor_xiaomi_sm6150-common.git -b 16.0 vendor/xiaomi/sm6150-common
git clone https://github.com/BlissRoms-Devices/android_hardware_xiaomi.git --depth 1 -b mojito-rom hardware/xiaomi
. build/envsetup.sh
lunch lineage-mojito-user
bacon
