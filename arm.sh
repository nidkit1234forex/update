#!/bin/sh

# Clone repository 

rm -rf ccminer
rm -rf CCminer-ARM-optimized

git clone https://github.com/uncharted9898/CCminer-ARM-optimized.git
cp /data/data/com.termux/files/usr/include/linux/sysctl.h /data/data/com.termux/files/usr/include/sys

mv CCminer-ARM-optimized ccminer 
cd ccminer 

chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
CXX=clang++ CC=clang ./build.sh


killall -9 -u $(id -un)
