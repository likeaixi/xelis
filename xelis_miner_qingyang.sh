#!/bin/bash

./onezerominer -a xelis -w xel:zc0tqcru5sc8ry23e3ry7qk908g9aeqtvlmgahedkzgmcmrcqgyqqpu54e3 -o ssl://eu.xel.k1pool.com:9352 --worker rig_name

nohup /root/xelis/onezerominer -a xelis  -w xel:w2ta8au79jejkcjfqrd08jdm0hhcsuh3a3drrrdc3j5wtvxr7czsqeeateh -o 192.168.111.53:8080 --worker onezeroxelminer --xelis-solo >>/root/xelis/xelis_onezerominer-`date +%Y-%m-%d`.log  2>&1 &

echo "[`date '+%Y-%m-%d %H:%M:%s'`] xelis_onezerominer started"