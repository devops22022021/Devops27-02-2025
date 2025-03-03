#!/bin/bash
echo "Server name: $(hostname)"
echo "memory usage:"
free -h
echo " CPU info:"
lscpu | grep 'Model name\|CPU(s):\|Thread(s)per core\|Core(s) per socket'
echo "disk usage:"
df -h |grep '^/dev/'
