# repo init -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs
# repo init --no-repo-verify --git-lfs -u https://github.com/ProjectInfinity-X/manifest -b 16 -g default,-mips,-darwin,-notdefault
# /opt/crave/resync.sh
# git clone https://github.com/Infinity-X-Devices/android_device_xiaomi_mojito.git -b 16 device/xiaomi/mojito
. build/envsetup.sh
lunch lineage-mojito-user
bacon
