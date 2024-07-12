#!/bin/bash

# 检查是否以root用户运行脚本
if [ "$(id -u)" != "0" ]; then
    echo "此脚本需要以root用户权限运行。"
    echo "请尝试使用 'sudo -i' 命令切换到root用户，然后再次运行此脚本。"
    exit 1
fi

nohup /root/xelis/xelis_daemon --allow-boost-sync --max-peers 128 --rpc-bind-address 0.0.0.0:8080 --priority-nodes 8.209.125.26:12125 --priority-nodes 47.236.186.28:12125 --priority-nodes 23.95.146.47:2125 --priority-nodes 51.68.142.141:2125 --priority-nodes 51.210.117.23:2125 --priority-nodes 94.232.212.26:2125 --priority-nodes 139.99.89.27:2125 --priority-nodes 162.19.249.100:2125 --priority-nodes 198.71.55.87:2125 >/root/xelis/xelis_daemon-`date +%Y-%m-%d`.log  2>&1 &

echo "[`date '+%Y-%m-%d %H:%M:%s'`] xelis_daemon node started"