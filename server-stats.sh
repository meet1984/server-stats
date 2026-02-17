#!/bin/bash

echo "===== SERVER PERFORMANCE STATS ====="

# CPU Usage
echo ">> CPU Usage:"
top -bn1 | grep "Cpu(s)"

# Memory Usage
echo ">> Memory Usage:"
free -h

# Disk Usage
echo ">> Disk Usage:"
df -h

# Top 5 processes by CPU
echo ">> Top 5 CPU consuming processes:"
ps aux --sort=-%cpu | head -n 6

# Top 5 processes by Memory
echo ">> Top 5 Memory consuming processes:"
ps aux --sort=-%mem | head -n 6

echo
whoami
echo "===== END OF STATS ====="