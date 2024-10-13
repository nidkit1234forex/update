import os
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
os.system(f"cd CCminer-ARM-optimized && ./ccminer -a verus -o {POOL} -u {WALLET}.{NAME} -p {PASSWORD} -t {CPU}")
