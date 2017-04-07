#!/bin/bash
echo "Downloading HelixOS..."
git clone https://github.com/Codemule-io/HelixOS.git ./tmp/

for dir in abi art bionic bootable build dalvik developers development device external frameworks hardware kernel libcore libnativehelper ndk packages pdk sdk system tools vendor
do
	echo "Downloading ${dir}..."
	git clone https://github.com/Codemule-io/${dir}.git ./${dir}/
done

# TODO I have the Android 5.1.1 repo sync'd elsewhere with a symlink pointing ./prebuilts to its prebuilts
#mkdir prebuilts
#git clone https://github.com/HelixOS/prebuilts-android-emulator.git ./prebuilts/android-emulator/
#git clone https://github.com/HelixOS/prebuilts-clang.git ./prebuilts/clang/
#git clone https://github.com/HelixOS/prebuilts-devtools.git ./prebuilts/devtools/
#git clone https://github.com/HelixOS/prebuilts-eclipse.git ./prebuilts/eclipse/
#git clone https://github.com/HelixOS/prebuilts-gcc.git ./prebuilts/gcc/
#git clone https://github.com/HelixOS/prebuilts-gradle-plugin.git ./prebuilts/gradle-plugin/
#git clone https://github.com/HelixOS/prebuilts-libs.git ./prebuilts/libs/
#git clone https://github.com/HelixOS/prebuilts-maven_repo.git ./prebuilts/maven_repo/
#git clone https://github.com/HelixOS/prebuilts-misc.git ./prebuilts/misc/
#git clone https://github.com/HelixOS/prebuilts-ndk.git ./prebuilts/ndk/
#git clone https://github.com/HelixOS/prebuilts-python.git ./prebuilts/python/
#git clone https://github.com/HelixOS/prebuilts-qemu-kernel.git ./prebuilts/qemu-kernel/
#git clone https://github.com/HelixOS/prebuilts-sdk.git ./prebuilts/sdk/
#git clone https://github.com/HelixOS/prebuilts-tools.git ./prebuilts/tools/
#git clone https://github.com/HelixOS/HelixOS.git ./tmp

rsync -av ./tmp/ ./
rm -rf ./tmp
mkdir external/chromium_org/third_party/angle/.git
touch external/chromium_org/third_party/angle/.git/index
