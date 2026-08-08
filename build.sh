#!/bin/bash

rm -rf .repo/local_manifests/
# repo init -u https://github.com/AviumUI/android_manifests.git -b avium-16.2 --git-lfs --depth=1
git clone https://github.com/382580322/helloworld --depth 1 -b avium-16.2 .repo/local_manifests
/opt/crave/resync.sh
sed -i 's/^AVIUM_MAINTAINER :=.*/AVIUM_MAINTAINER := 神秘练习生两年半/g' device/oneplus/hummer/lineage_hummer.mk
sed -i 's/^AVIUM_SETTINGS_SOC_MODEL_NAME :=.*/AVIUM_SETTINGS_SOC_MODEL_NAME := 神秘老人疯狂星期四/g' device/oneplus/hummer/lineage_hummer.mk
sed -i 's/^AVIUM_SETTINGS_DEVICE_CODENAME :=.*/AVIUM_SETTINGS_DEVICE_CODENAME := sm2years6months/g' device/oneplus/hummer/lineage_hummer.mk
sed -i 's/^WITH_GMS :=.*/WITH_GMS := false/g' device/oneplus/hummer/lineage_hummer.mk
source build/envsetup.sh
# avium get_gms --update-local-manifests
# /opt/crave/resync.sh
lunch lineage_hummer-bp4a-userdebug
make installclean
m bacon