#!/bin/bash

rm -rf .repo/local_manifests/
# repo init -u https://github.com/LineageOS/android.git -b lineage-23.2 --git-lfs --depth=1
git clone https://github.com/382580322/helloworld --depth 1 -b lineage-23.2 .repo/local_manifests
/opt/crave/resync.sh
repo sync --force-sync --no-clone-bundle --no-tags
source build/envsetup.sh
breakfast hummer user
make installclean
m bacon