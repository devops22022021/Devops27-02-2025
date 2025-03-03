#!/bin/bash
#
echo "PID  %CPU COMMAND"
echo  "_________________"
ps -eo pid,%cpu,cmd --sort=-%cpu | head -n 20
