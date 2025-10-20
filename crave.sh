repo init -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs
/opt/crave/resync.sh

# repo init --no-repo-verify --git-lfs -u https://github.com/ProjectInfinity-X/manifest -b 16 -g default,-mips,-darwin,-notdefault
# /opt/crave/resync.sh

. build/envsetup.sh
lunch lineage-mojito-user
bacon
