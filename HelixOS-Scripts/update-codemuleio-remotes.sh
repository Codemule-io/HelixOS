#!/bin/bash
cd $HOME/helixos
git remote add helixos https://github.com/HelixOS/HelixOS.git
git remote set-url origin git@github.com:Codemule-io/HelixOS.git

for dir in abi art bionic bootable build dalvik developers development device external frameworks hardware kernel libcore libnativehelper ndk packages pdk sdk system tools vendor
do
	cd ${dir}
	#git remote add codemule-io git@github.com:Codemule-io/${dir}.git
	#git remote add helixos https://github.com/HelixOS/${dir}.git
	echo "Setting remote for ${dir}..."
	git remote set-url helixos https://github.com/HelixOS/${dir}.git
	git remote set-url origin git@github.com:Codemule-io/${dir}.git
	cd ..
done
