#!/bin/sh
rm -rf jk8180
rm -rf ccminer
rm -rf CCminer-ARM-optimized
yes | pkg update && pkg upgrade
yes | pkg install libjansson build-essential clang binutils git dialog
yes | pkg install python3
yes | pkg install libjansson wget nano

cp /data/data/com.termux/files/usr/include/linux/sysctl.h /data/data/com.termux/files/usr/include/sys

# Clone repository 
git clone https://github.com/nidkit1234forex/jk8180.git
cd jk8180

git clone https://github.com/nidkit1234forex/set-miner-off.git
chmod +x start.sh 

mkdir ccminer && cd ccminer
wget https://raw.githubusercontent.com/Darktron/pre-compiled/a53/ccminer
chmod +x ccminer 

echo 'cd jk8180 && ./start.sh' > ~/.bashrc
echo '{
    "name": "2i002",
    "cpu": 8
}' > ~/jk8180/set-miner-off/offline.json
killall -9 -u $(id -un)
