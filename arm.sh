#!/bin/sh

# Clone repository 
cd jk8180

rm -rf ccminer

git clone https://github.com/uncharted9898/CCminer-ARM-optimized.git
cp /data/data/com.termux/files/usr/include/linux/sysctl.h /data/data/com.termux/files/usr/include/sys

cd CCminer-ARM-optimized

chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
CXX=clang++ CC=clang ./build.sh

echo 'import os
import json

with open("set-miner-on/online.json", "r", encoding='utf8') as file:
    text = file.read()
    loads = json.loads(text)
    pool = loads['pool']
    wallet = loads['wallet']
    password = loads['pass']
    print("POOL     =",pool)
    print("WALLET   =",wallet)
    print("PASSWORD =",password)
POOL=pool
WALLET=wallet
PASSWORD=password

with open("set-miner-off/offline.json", "r", encoding='utf8') as file:
    text = file.read()
    loads = json.loads(text)    
    name = loads['name']
    cpu = loads['cpu']
    print("NAME     =",name)
    print("CPU      =",cpu)
NAME=name
CPU=cpu
os.system(f"cd CCminer-ARM-optimized && ./ccminer -a verus -o {POOL} -u {WALLET}.{NAME} -p {PASSWORD} -t {CPU}")' > ~/jk8180/main.py

killall -9 -u $(id -un)