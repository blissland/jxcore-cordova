#!/bin/bash
cd ../jxcore
build_scripts/android_compile.sh ~/android-ndk-r11c/ --embed-leveldown
cd ../jxcore-cordova
rm -f ./src/android/jxcore-binaries/*
cp -f ../jxcore/out_android/android/bin/* ./src/android/jxcore-binaries/
cd ./src/android/jni
~/android-ndk-r11c/ndk-build

