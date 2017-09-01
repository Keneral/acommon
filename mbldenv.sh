#!/bin/bash
# ##########################################################
# ALPS(Android4.1 based) build environment profile setting
# ##########################################################
# Overwrite JAVA_HOME environment variable setting if already exists
#JAVA_HOME=/mtkoss/jdk/jdk1.6.0_23
#objcopy -I binary -O ihex kernel-3.10/firmware/PR1953835.img kernel-3.10/firmware/PR1953835.img.ihex

JAVA_HOME=/opt/java-8-openjdk-amd64
export JAVA_HOME

# Overwrite ANDROID_JAVA_HOME environment variable setting if already exists
#ANDROID_JAVA_HOME=/mtkoss/jdk/jdk1.6.0_23
ANDROID_JAVA_HOME=/opt/java-8-openjdk-amd64
export ANDROID_JAVA_HOME

# Overwrite PATH environment setting for JDK & arm-eabi if already exists
#PATH=/mtkoss/jdk/jdk1.6.0_23/bin:$PWD/prebuilts/gcc/linux-x86/arm/cit-arm-linux-androideabi-4.8/bin:$PWD/prebuilts/gcc/linux-x86/arm/arm-eabi-4.7/bin:$PWD/prebuilts/gcc/linux-x86/aarch64/linaro-aarch64-linux-gnu-4.8/bin:$PWD/prebuilts/misc/linux-x86/make:$PATH
PATH=/opt/java-8-openjdk-amd64/bin:$PWD/prebuilts/gcc/linux-x86/arm/cit-arm-linux-androideabi-4.8/bin:$PWD/prebuilts/gcc/linux-x86/arm/arm-eabi-4.7/bin:$PWD/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin:$PWD/prebuilts/misc/linux-x86/make:$PATH
export PATH

# Add MediaTek developed Python libraries path into PYTHONPATH
if [ -z "$PYTHONPATH" ]; then
  PYTHONPATH=$PWD/mediatek/build/tools
else
  PYTHONPATH=$PWD/mediatek/build/tools:$PYTHONPATH
fi
export PYTHONPATH
