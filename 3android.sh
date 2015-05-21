#!/bin/sh

## sdk
#git clone https://android.googlesource.com/platform/sdk.git

## ndk
#git clone https://android.googlesource.com/platform/ndk.git

echo 'export ANDROID_HOME="'$HOME'/tools/android-sdk-linux"' >> ~/.bashrc
echo 'export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"' >> ~/.bashrc
echo 'export JAVA_CMD="/usr/lib/jvm/java-7-openjdk-amd64/bin/java"' >> ~/.bashrc
