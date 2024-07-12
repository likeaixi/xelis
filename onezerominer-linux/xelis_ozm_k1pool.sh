#!/bin/bash

# 获取第一个非本地网络接口的 IP 地址
ip_address=$(hostname -I | awk '{print $1}')

# 去掉 IP 地址中的点
ip_address_no_dots=$(echo $ip_address | tr -d '.')

# 打印处理后的 IP 地址
echo "IP 地址: $ip_address_no_dots"

nohup /root/xelis/onezerominer -a xelis -w KrLWjsXn8xVmTZfGEnyFntDnsnTwLR2NsyA.$ip_address_no_dots -o eu.xel.k1pool.com:9351 --a2 zil --w2 KrLWjsXn8xVmTZfGEnyFntDnsnTwLR2NsyA.$ip_address_no_dots --p2 x --o2 eu.zil.k1pool.com:1111 >>/root/xelis/xelis_k1pool-`date +%Y-%m-%d`.log  2>&1 &


echo "[`date '+%Y-%m-%d %H:%M:%s'`] xelis_k1pool started"