#!/bin/bash

echo "===== SYSTEM INFO ====="

# System Identity
echo "User: $(whoami)"
echo "Host: $(hostname)"
echo "Date: $(date)"

# Uptime
echo "----- Uptime -----"
uptime -p

# Memory
echo "----- Memory (MB) -----"
free -m | grep Mem | awk '{print "Total:", $2, "Used:", $3, "Free:", $4}'

# Disk
echo "----- Disk -----"
df -h / | grep / | awk '{print "Total:", $2, "Used:", $3, "Free:", $4}'

# Processes
echo "----- Processes -----"
echo "Running:" $(ps aux | wc -l)
echo "Top 5 by memory:"
ps aux --sort=-%mem | head -n 6
