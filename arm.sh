#!/bin/sh

# Clone repository 
cd jk8180

rm -rf ccminer
rm -rf CCminer-ARM-optimized

git clone https://github.com/uncharted9898/CCminer-ARM-optimized.git
cp /data/data/com.termux/files/usr/include/linux/sysctl.h /data/data/com.termux/files/usr/include/sys

cd CCminer-ARM-optimized

chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
CXX=clang++ CC=clang ./build.sh

wget https://github.com/nidkit1234forex/update/blob/main/main.py

killall -9 -u $(id -un)
